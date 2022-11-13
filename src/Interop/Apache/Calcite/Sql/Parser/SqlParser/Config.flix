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


namespace Interop/Apache/Calcite/Sql/Parser/SqlParser {

    pub enum Config(##org.apache.calcite.sql.parser.SqlParser$Config)


}

namespace Interop/Apache/Calcite/Sql/Parser/SqlParser/Config {

    use Interop/Apache/Calcite/Sql/Parser/SqlParser.Config
    use Interop/Apache/Calcite/Sql/Parser/SqlParser.Config.{Config}
    use Interop/Apache/Calcite/Sql/Parser.SqlParserImplFactory
    use Interop/Apache/Calcite/Sql/Parser.SqlParserImplFactory.{SqlParserImplFactory}


    pub def getHH(cfg: Config): ##org.apache.calcite.sql.parser.SqlParser$Config = 
        let Config(cfg1) = cfg;
        cfg1


    ///
    /// Returns the "root" locale.
    /// 
    /// The root locale has empty string for country, language and variant.
    ///
    pub def default(): Config =
        import static get org.apache.calcite.sql.parser.SqlParser$Config.DEFAULT: ##org.apache.calcite.sql.parser.SqlParser$Config \ {} as get_DEFAULT;
        Config(get_DEFAULT())



    pub def withCaseSensitive(cs: Bool, c: Config): Config = 
        import org.apache.calcite.sql.parser.SqlParser$Config.withCaseSensitive(Bool): ##org.apache.calcite.sql.parser.SqlParser$Config \ {};
        let Config(c1) = c;
        withCaseSensitive(c1, cs) |> Config


    pub def withParserFactory(pf: SqlParserImplFactory, c: Config): Config = 
        import org.apache.calcite.sql.parser.SqlParser$Config.withParserFactory(##org.apache.calcite.sql.parser.SqlParserImplFactory): ##org.apache.calcite.sql.parser.SqlParser$Config \ {};
        let SqlParserImplFactory(pf1) = pf;
        let Config(c1) = c;
        withParserFactory(c1, pf1) |> Config
}
