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

    pub enum SqlOperator(##org.apache.calcite.sql.SqlOperator)

    instance ToString[SqlOperator] {
        pub def toString(x: SqlOperator): String = 
            Interop/Apache/Calcite/Sql/SqlOperator.toString(x)
    }

}

namespace Interop/Apache/Calcite/Sql/SqlOperator {

    use Interop/Apache/Calcite/Sql.SqlOperator
    use Interop/Apache/Calcite/Sql.SqlOperator.{SqlOperator}
    use Interop/Apache/Calcite/Sql.SqlKind
    use Interop/Apache/Calcite/Sql.SqlKind.{SqlKind}

    pub def getHH(op: SqlOperator): ##org.apache.calcite.sql.SqlOperator = 
        let SqlOperator(op1) = op;
        op1


    pub def toString(op: SqlOperator): String = 
        import org.apache.calcite.sql.SqlOperator.toString(): String \ {};
        let SqlOperator(op1) = op;
        toString(op1)

    pub def getKind(op: SqlOperator): SqlKind = 
        import org.apache.calcite.sql.SqlOperator.getKind(): ##org.apache.calcite.sql.SqlKind \ {};
        let SqlOperator(op1) = op;
        getKind(op1) |> SqlKind

    pub def getName(op: SqlOperator): String = 
        import org.apache.calcite.sql.SqlOperator.getName(): String \ {};
        let SqlOperator(op1) = op;
        getName(op1)

}
