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

    pub enum SqlDrop(##org.apache.calcite.sql.SqlDrop)

    instance ToString[SqlDrop] {
        pub def toString(x: SqlDrop): String = 
            Interop/Apache/Calcite/Sql/SqlDrop.toString(x)
    }

}

namespace Interop/Apache/Calcite/Sql/SqlDrop {

    use Interop/Apache/Calcite/Sql.SqlDrop
    use Interop/Apache/Calcite/Sql.SqlDrop.{SqlDrop}
    use Interop/Apache/Calcite/Sql.SqlOperator
    use Interop/Apache/Calcite/Sql.SqlOperator.{SqlOperator}


    pub def getHH(c: SqlDrop): ##org.apache.calcite.sql.SqlDrop = 
        let SqlDrop(c1) = c;
        c1


    pub def toString(c: SqlDrop): String = 
        import org.apache.calcite.sql.SqlDrop.toString(): String \ {};
        let SqlDrop(c1) = c;
        toString(c1)

    pub def getOperator(c: SqlDrop): SqlOperator = 
        import org.apache.calcite.sql.SqlDrop.getOperator(): ##org.apache.calcite.sql.SqlOperator \ {};
        let SqlDrop(c1) = c;
        getOperator(c1) |> SqlOperator


}
