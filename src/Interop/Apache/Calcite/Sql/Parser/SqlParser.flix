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


namespace Interop/Apache/Calcite/Sql/Parser {
    
    pub enum SqlParser(##org.apache.calcite.sql.parser.SqlParser)


}

namespace Interop/Apache/Calcite/Sql/Parser/SqlParser {

    use Interop/Apache/Calcite/Sql/Parser.SqlParser
    use Interop/Apache/Calcite/Sql/Parser.SqlParser.{SqlParser}
    use Interop/Apache/Calcite/Sql/Parser/SqlParser.Config
    use Interop/Apache/Calcite/Sql/Parser/SqlParser.Config.{Config}
    use Interop/Apache/Calcite/Sql.SqlNode
    use Interop/Apache/Calcite/Sql.SqlNode.{SqlNode}

    pub def getHH(sp: SqlParser): ##org.apache.calcite.sql.parser.SqlParser = 
        let SqlParser(sp1) = sp;
        sp1

    pub def create(s: String): SqlParser = 
        import static org.apache.calcite.sql.parser.SqlParser.create(String): ##org.apache.calcite.sql.parser.SqlParser \ {};
        create(s) |> SqlParser

    pub def createWithConfig(s: String, cfg: Config): SqlParser = 
        import static org.apache.calcite.sql.parser.SqlParser.create(String, ##org.apache.calcite.sql.parser.SqlParser$Config): ##org.apache.calcite.sql.parser.SqlParser \ {};
        let Config(cfg1) = cfg;
        create(s, cfg1) |> SqlParser

    pub def config(): Config = 
        import static org.apache.calcite.sql.parser.SqlParser.config(): ##org.apache.calcite.sql.parser.SqlParser$Config \ {};
        config() |> Config

    pub def parseQuery(sp: SqlParser): SqlNode = 
        import org.apache.calcite.sql.parser.SqlParser.parseQuery(): ##org.apache.calcite.sql.SqlNode \ {};
        let SqlParser(sp1) = sp;
        parseQuery(sp1) |> SqlNode


}
