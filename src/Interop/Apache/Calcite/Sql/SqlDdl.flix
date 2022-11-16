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

    /// Extends SqlCall

    pub enum SqlDdl(##org.apache.calcite.sql.SqlDdl)

    instance ToString[SqlDdl] {
        pub def toString(x: SqlDdl): String = 
            Interop/Apache/Calcite/Sql/SqlDdl.toString(x)
    }

}

namespace Interop/Apache/Calcite/Sql/SqlDdl {

    use Interop/Apache/Calcite/Sql.SqlDdl
    use Interop/Apache/Calcite/Sql.SqlDdl.{SqlDdl}
    use Interop/Apache/Calcite/Sql.SqlOperator
    use Interop/Apache/Calcite/Sql.SqlOperator.{SqlOperator}


    pub def getHH(c: SqlDdl): ##org.apache.calcite.sql.SqlDdl = 
        let SqlDdl(c1) = c;
        c1


    pub def toString(c: SqlDdl): String = 
        import org.apache.calcite.sql.SqlDdl.toString(): String \ {};
        let SqlDdl(c1) = c;
        toString(c1)

    pub def getOperator(c: SqlDdl): SqlOperator = 
        import org.apache.calcite.sql.SqlDdl.getOperator(): ##org.apache.calcite.sql.SqlOperator \ {};
        let SqlDdl(c1) = c;
        getOperator(c1) |> SqlOperator


}
