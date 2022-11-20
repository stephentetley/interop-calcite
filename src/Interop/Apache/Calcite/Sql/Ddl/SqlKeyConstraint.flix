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


namespace Interop/Apache/Calcite/Sql/Ddl {

    use Interop/Apache/Calcite/Sql.SqlNode
    use Interop/Apache/Calcite/Sql.SqlNode.{SqlNode}

    pub enum SqlKeyConstraint(##org.apache.calcite.sql.ddl.SqlKeyConstraint)

    instance ToString[SqlKeyConstraint] {
        pub def toString(x: SqlKeyConstraint): String = 
            Interop/Apache/Calcite/Sql/Ddl/SqlKeyConstraint.toString(x)
    }


}

namespace Interop/Apache/Calcite/Sql/Ddl/SqlKeyConstraint {

    use Interop/Apache/Calcite/Sql/Ddl.SqlKeyConstraint
    use Interop/Apache/Calcite/Sql/Ddl.SqlKeyConstraint.{SqlKeyConstraint}
    use Interop/Apache/Calcite/Sql.SqlOperator
    use Interop/Apache/Calcite/Sql.SqlOperator.{SqlOperator}

    pub def getHH(kc: SqlKeyConstraint): ##org.apache.calcite.sql.ddl.SqlKeyConstraint = 
        let SqlKeyConstraint(kc1) = kc;
        kc1

    pub def toString(kc: SqlKeyConstraint): String = 
        import org.apache.calcite.sql.ddl.SqlKeyConstraint.toString(): String \ {};
        let SqlKeyConstraint(kc1) = kc;
        toString(kc1)


    // TODO should `interop-base` provide an ImmList ?
    pub def getOperandList(kc: SqlKeyConstraint): ##java.util.List = 
        import org.apache.calcite.sql.ddl.SqlKeyConstraint.getOperandList(): ##java.util.List \ {};
        let SqlKeyConstraint(kc1) = kc;
        getOperandList(kc1)


    pub def getOperator(kc: SqlKeyConstraint): SqlOperator = 
        import org.apache.calcite.sql.ddl.SqlKeyConstraint.getOperator(): ##org.apache.calcite.sql.SqlOperator \ {};
        let SqlKeyConstraint(kc1) = kc;
        getOperator(kc1) |> SqlOperator


}
