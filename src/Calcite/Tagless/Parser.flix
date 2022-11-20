/*
 * Copyright 2022 Stephen Tetley
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *   http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */



namespace Calcite/Tagless {

    ///
    /// Codensity(Error) monad
    /// 
    /// `ka` is the continuation answer type
    ///
    pub enum Parser[r: Region, ka: Type, node: Type, a: Type](MonadLib.EnvError[r, ka, node, a])

    instance Functor[Parser[r, ka, node]] {
        pub def map(f: a -> b \ ef, x: Parser[r, ka, node, a]): Parser[r, ka, node, b] \ ef =
            Calcite/Tagless/Parser.map(f, x)
    }

    instance Applicative[Parser[r, ka, node]] {
        pub def point(x: a): Parser[r, ka, node, a] = 
            Calcite/Tagless/Parser.point(x)

        pub def ap(mf: Parser[r, ka, node, a -> b \ ef], ma: Parser[r, ka, node, a]): Parser[r, ka, node, b] \ ef =
            Calcite/Tagless/Parser.ap(mf, ma)
    }
    
    instance Monad[Parser[r, ka, node]] {
        pub def flatMap(k: a -> Parser[r, ka, node, b] \ ef, x: Parser[r, ka, node, a]): Parser[r, ka, node, b] \ ef =
            Calcite/Tagless/Parser.flatMap(k, x)
    } 

    instance MonadZero[Parser[r, ka, node]] {
        pub def empty(): Parser[r, ka, node, a] = 
            Calcite/Tagless/Parser.empty()
    }
    
    instance MonadLib.MonadOr[Parser[r, ka, node]] {
        pub def orelse(a: Parser[r, ka, node, a], b: Parser[r, ka, node, a]): Parser[r, ka, node, a] =
            Calcite/Tagless/Parser.orelse(a, b)
    }

    instance MonadLib.MonadError[Parser[r, ka, node]] {
        pub def throwError(msg: String): Parser[r, ka, node, a] = 
            Calcite/Tagless/Parser.throwError(msg)

        pub def mapError(f: String -> String \ ef, ma: Parser[r, ka, node, a]): Parser[r, ka, node, a] \ ef =
            Calcite/Tagless/Parser.mapError(f, ma)

        pub def catchError(ma: Parser[r, ka, node, a], f: String -> Parser[r, ka, node, a] \ ef): Parser[r, ka, node, a] \ ef =
            Calcite/Tagless/Parser.catchError(ma, f)
    }

}

namespace Calcite/Tagless/Parser {


    use Calcite/Tagless.Parser
    use Calcite/Tagless.Parser.{Parser}
    use Interop/Apache/Calcite/Sql.GetSqlKind
    use Interop/Apache/Calcite/Sql.SqlKind

    pub def getParser(x: Parser[r, ka, node, a]): MonadLib.EnvError[r, ka, node, a] = 
        let Parser(x1) = x;
        x1
        
    pub def runParser(r: Region[r], ma: Parser[r, a, node, a], env: node): Result[a, String] \ r =
        MonadLib/EnvError.runEnvError(r, getParser(ma), env)

    pub def point(x: a): Parser[r, ka, node, a] = Parser(MonadLib/EnvError.point(x))

    pub def map(f: a -> b \ ef, ma: Parser[r, ka, node, a]): Parser[r, ka, node, b] \ ef =
        Parser(MonadLib/EnvError.map(f, getParser(ma)))

    pub def ap(mf: Parser[r, ka, node, a -> b \ ef], ma: Parser[r, ka, node, a]): Parser[r, ka, node, b] \ ef =
        Parser(MonadLib/EnvError.ap(getParser(mf), getParser(ma)))


    pub def flatMap(f: a -> Parser[r, ka, node, b] \ ef, ma: Parser[r, ka, node, a]): Parser[r, ka, node, b] \ ef =
        Parser(MonadLib/EnvError.flatMap(f >> getParser, getParser(ma)))

    pub def throwError(msg: String): Parser[r, ka, node, a] = 
        Parser(MonadLib/EnvError.throwError(msg))

    pub def mapError(f: String -> String \ ef, ma: Parser[r, ka, node, a]): Parser[r, ka, node, a] \ ef = 
        Parser(MonadLib/EnvError.mapError(f, getParser(ma)))

    pub def catchError(ma: Parser[r, ka, node, a], f: String -> Parser[r, ka, node, a] \ ef): Parser[r, ka, node, a] \ ef =
        Parser(MonadLib/EnvError.catchError(getParser(ma), f >> getParser))

    pub def empty(): Parser[r, ka, node, a] = 
        Parser(MonadLib/EnvError.empty())
        
    pub def orelse(ma: Parser[r, ka, node, a], mb: Parser[r, ka, node, a]): Parser[r, ka, node, a] =
        Parser(MonadLib/EnvError.orelse(getParser(ma), getParser(mb)))

    pub def liftGetter(f: node -> a \ ef): Parser[r, ka, node, a] \ ef =
        Parser(MonadLib/EnvError.liftGetter(f))

    pub def liftGetterResult(f: node -> Result[a, err] \ ef): Parser[r, ka, node, a] \ ef with ToString[err] =
        Parser(MonadLib/EnvError.liftGetterResult(f))


    pub def askNode(): Parser[r, ka, env, env] = 
        Parser(MonadLib/EnvError.askEnv())

    pub def asksNode(f: env -> a): Parser[r, ka, env, a] =
        Parser(MonadLib/EnvError.asksEnv(f))

    pub def localNode(f: env -> env1 \ ef, ma: Parser[r, ka, env1, a]): Parser[r, ka, env, a] \ ef =
        Parser(MonadLib/EnvError.localEnv(f, getParser(ma)))


    pub def withLocalNode(castNode: SqlKind -> node -> Option[node1], ma: Parser[r, ka, node1, a]): Parser[r, ka, node, a] with GetSqlKind[node] = 
        let* node = askNode();
        let skind = Interop/Apache/Calcite/Sql/GetSqlKind.getSqlKind(node);
        let* node1 = match castNode(skind, node) {
                case Some(x) => point(x)
                case None    => throwError("Invalid cast - ${skind}")
        };
        localNode(_ -> node1, ma)

}
