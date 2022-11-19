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



namespace Calcite/Tagless/Tagless {

    pub class DdlAlg[repr: Type] {
        pub def sqlCreateTable(name: String): repr
        pub def sqlCreateView(name: String): repr
    }

    pub type alias PP = String

    /// interpretation...
    instance DdlAlg[String]{
        pub def sqlCreateTable(name: String): String = "CREATE TABLE ${name}"
        pub def sqlCreateView(name: String): String = "CREATE VIEW ${name}"
    }

    
}

namespace Calcite/Tagless/Parser1 {

    use Interop/Apache/Calcite/Sql.SqlNode
    use Interop/Apache/Calcite/Sql.SqlNode.{SqlNode}
    use Interop/Apache/Calcite/Sql/Ddl.SqlCreateTable
    use Interop/Apache/Calcite/Sql/Ddl.SqlCreateView
    use Calcite/Tagless/Tagless.DdlAlg
    use Calcite/Tagless/Tagless/DdlAlg.{sqlCreateTable, sqlCreateView}
    use Calcite/Tagless.Parser
    use MonadLib/MonadOr.orelse

    pub def interpret1(node: SqlNode): Result[String, String] = region r {
        Calcite/Tagless/Parser.runParser(r, parseDdl(), node)
    }

    pub def test01(): e with DdlAlg[e] = sqlCreateTable("countries")

    type alias SqlNodeParser[r: Region, ka: Type, a: Type] = Parser[r, ka, SqlNode, a]


    pub def parseDdl(): SqlNodeParser[r, ka, e] with DdlAlg[e] = 
        parseCreateTable() `orelse` parseCreateView()

    pub def parseCreateTable(): SqlNodeParser[r, ka, e] with DdlAlg[e] =
        let body = node -> match Interop/Apache/Calcite/Sql/SqlNode.getKind(node) {
            case en if en == Interop/Apache/Calcite/Sql/SqlKind.create_table() => {
                let sct: SqlCreateTable = Interop/Apache/Calcite/Sql/SubSqlNode.fromSqlNode(node);
                let name = Interop/Apache/Calcite/Sql/Ddl/SqlCreateTable.name(sct);
                sqlCreateTable(Interop/Apache/Calcite/Sql/SqlIdentifier.toString(name)) |> Ok
            }
            case _ => Err("parseCreateTable")
        };
        Calcite/Tagless/Parser.liftGetterResult(body)

    pub def parseCreateView(): SqlNodeParser[r, ka, e] with DdlAlg[e] =
        let body = node -> match Interop/Apache/Calcite/Sql/SqlNode.getKind(node) {
            case en if en == Interop/Apache/Calcite/Sql/SqlKind.create_view() => {
                let scv: SqlCreateView = Interop/Apache/Calcite/Sql/SubSqlNode.fromSqlNode(node);
                let name = Interop/Apache/Calcite/Sql/Ddl/SqlCreateView.name(scv);
                sqlCreateView(Interop/Apache/Calcite/Sql/SqlIdentifier.toString(name)) |> Ok
            }
            case _ => Err("parseCreateView")
        };
        Calcite/Tagless/Parser.liftGetterResult(body)


}
