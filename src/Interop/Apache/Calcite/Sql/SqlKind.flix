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

    pub enum SqlKind(##org.apache.calcite.sql.SqlKind)

    instance ToString[SqlKind] {
        pub def toString(x: SqlKind): String = 
            Interop/Apache/Calcite/Sql/SqlKind.toString(x)
    }

}

namespace Interop/Apache/Calcite/Sql/SqlKind {

    use Interop/Apache/Calcite/Sql.SqlKind
    use Interop/Apache/Calcite/Sql.SqlKind.{SqlKind}


    pub def getHH(k: SqlKind): ##org.apache.calcite.sql.SqlKind = 
        let SqlKind(k1) = k;
        k1


    pub def toString(k: SqlKind): String = 
        import org.apache.calcite.sql.SqlKind.toString(): String \ {};
        let SqlKind(k1) = k;
        toString(k1)


    pub def all(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.ALL: ##org.apache.calcite.sql.SqlKind \ {} as get_ALL;
        get_ALL() |> SqlKind


    pub def alter_index(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.ALTER_INDEX: ##org.apache.calcite.sql.SqlKind \ {} as get_ALTER_INDEX;
        get_ALTER_INDEX() |> SqlKind

    // TODO fill out...

    pub def create_table(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.CREATE_TABLE: ##org.apache.calcite.sql.SqlKind \ {} as get_CREATE_TABLE;
        get_CREATE_TABLE() |> SqlKind


    pub def selectz(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.SELECT: ##org.apache.calcite.sql.SqlKind \ {} as get_SELECT;
        get_SELECT() |> SqlKind

}
