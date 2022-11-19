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


namespace Interop/Apache/Calcite/Sql {

    pub enum SqlFunctionCategory(##org.apache.calcite.sql.SqlFunctionCategory)

    instance ToString[SqlFunctionCategory] {
        pub def toString(x: SqlFunctionCategory): String = 
            Interop/Apache/Calcite/Sql/SqlFunctionCategory.toString(x)
    }

}

namespace Interop/Apache/Calcite/Sql/SqlFunctionCategory {

    use Interop/Apache/Calcite/Sql.SqlFunctionCategory
    use Interop/Apache/Calcite/Sql.SqlFunctionCategory.{SqlFunctionCategory}


    pub def getHH(k: SqlFunctionCategory): ##org.apache.calcite.sql.SqlFunctionCategory = 
        let SqlFunctionCategory(k1) = k;
        k1


    pub def toString(fc: SqlFunctionCategory): String = 
        import org.apache.calcite.sql.SqlFunctionCategory.toString(): String \ {};
        let SqlFunctionCategory(fc1) = fc;
        toString(fc1)

    pub def match_recognize(): SqlFunctionCategory =
        import static get org.apache.calcite.sql.SqlFunctionCategory.MATCH_RECOGNIZE: ##org.apache.calcite.sql.SqlFunctionCategory \ {} as get_MATCH_RECOGNIZE;
        get_MATCH_RECOGNIZE() |> SqlFunctionCategory

    pub def numeric(): SqlFunctionCategory =
        import static get org.apache.calcite.sql.SqlFunctionCategory.NUMERIC: ##org.apache.calcite.sql.SqlFunctionCategory \ {} as get_NUMERIC;
        get_NUMERIC() |> SqlFunctionCategory

    pub def string(): SqlFunctionCategory =
        import static get org.apache.calcite.sql.SqlFunctionCategory.STRING: ##org.apache.calcite.sql.SqlFunctionCategory \ {} as get_STRING;
        get_STRING() |> SqlFunctionCategory

    pub def system(): SqlFunctionCategory =
        import static get org.apache.calcite.sql.SqlFunctionCategory.SYSTEM: ##org.apache.calcite.sql.SqlFunctionCategory \ {} as get_SYSTEM;
        get_SYSTEM() |> SqlFunctionCategory

    pub def timedate(): SqlFunctionCategory =
        import static get org.apache.calcite.sql.SqlFunctionCategory.TIMEDATE: ##org.apache.calcite.sql.SqlFunctionCategory \ {} as get_TIMEDATE;
        get_TIMEDATE() |> SqlFunctionCategory

    pub def user_defined_constructor(): SqlFunctionCategory =
        import static get org.apache.calcite.sql.SqlFunctionCategory.USER_DEFINED_CONSTRUCTOR: ##org.apache.calcite.sql.SqlFunctionCategory \ {} as get_USER_DEFINED_CONSTRUCTOR;
        get_USER_DEFINED_CONSTRUCTOR() |> SqlFunctionCategory

    pub def user_defined_function(): SqlFunctionCategory =
        import static get org.apache.calcite.sql.SqlFunctionCategory.USER_DEFINED_FUNCTION: ##org.apache.calcite.sql.SqlFunctionCategory \ {} as get_USER_DEFINED_FUNCTION;
        get_USER_DEFINED_FUNCTION() |> SqlFunctionCategory

    pub def user_defined_procedure(): SqlFunctionCategory =
        import static get org.apache.calcite.sql.SqlFunctionCategory.USER_DEFINED_PROCEDURE: ##org.apache.calcite.sql.SqlFunctionCategory \ {} as get_USER_DEFINED_PROCEDURE;
        get_USER_DEFINED_PROCEDURE() |> SqlFunctionCategory

    pub def user_defined_specific_function(): SqlFunctionCategory =
        import static get org.apache.calcite.sql.SqlFunctionCategory.USER_DEFINED_SPECIFIC_FUNCTION: ##org.apache.calcite.sql.SqlFunctionCategory \ {} as get_USER_DEFINED_SPECIFIC_FUNCTION;
        get_USER_DEFINED_SPECIFIC_FUNCTION() |> SqlFunctionCategory

    pub def user_defined_table_function(): SqlFunctionCategory =
        import static get org.apache.calcite.sql.SqlFunctionCategory.USER_DEFINED_TABLE_FUNCTION: ##org.apache.calcite.sql.SqlFunctionCategory \ {} as get_USER_DEFINED_TABLE_FUNCTION;
        get_USER_DEFINED_TABLE_FUNCTION() |> SqlFunctionCategory

    pub def user_defined_table_specific_function(): SqlFunctionCategory =
        import static get org.apache.calcite.sql.SqlFunctionCategory.USER_DEFINED_TABLE_SPECIFIC_FUNCTION: ##org.apache.calcite.sql.SqlFunctionCategory \ {} as get_USER_DEFINED_TABLE_SPECIFIC_FUNCTION;
        get_USER_DEFINED_TABLE_SPECIFIC_FUNCTION() |> SqlFunctionCategory

}
