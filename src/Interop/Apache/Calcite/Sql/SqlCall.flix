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

    pub enum SqlCall(##org.apache.calcite.sql.SqlCall)

    instance ToString[SqlCall] {
        pub def toString(x: SqlCall): String = 
            Interop/Apache/Calcite/Sql/SqlCall.toString(x)
    }

}

namespace Interop/Apache/Calcite/Sql/SqlCall {

    use Interop/Apache/Calcite/Sql.SqlCall
    use Interop/Apache/Calcite/Sql.SqlCall.{SqlCall}
    use Interop/Apache/Calcite/Sql.SqlKind
    use Interop/Apache/Calcite/Sql.SqlKind.{SqlKind}
    use Interop/Apache/Calcite/Sql.SqlLiteral
    use Interop/Apache/Calcite/Sql.SqlLiteral.{SqlLiteral}
    use Interop/Apache/Calcite/Sql.SqlNode
    use Interop/Apache/Calcite/Sql.SqlOperator
    use Interop/Apache/Calcite/Sql.SqlOperator.{SqlOperator}

    //

    pub def getHH(c: SqlCall): ##org.apache.calcite.sql.SqlCall = 
        let SqlCall(c1) = c;
        c1


    pub def toString(c: SqlCall): String = 
        import org.apache.calcite.sql.SqlCall.toString(): String \ {};
        let SqlCall(c1) = c;
        toString(c1)

    pub def getKind(c: SqlCall): SqlKind = 
        import org.apache.calcite.sql.SqlCall.getKind(): ##org.apache.calcite.sql.SqlKind \ {};
        let SqlCall(c1) = c;
        getKind(c1) |> SqlKind

    pub def getOperator(c: SqlCall): SqlOperator = 
        import org.apache.calcite.sql.SqlCall.getOperator(): ##org.apache.calcite.sql.SqlOperator \ {};
        let SqlCall(c1) = c;
        getOperator(c1) |> SqlOperator

    pub def getFunctionQuantifier(c: SqlCall): SqlLiteral = 
        import org.apache.calcite.sql.SqlCall.getFunctionQuantifier(): ##org.apache.calcite.sql.SqlLiteral \ {};
        let SqlCall(c1) = c;
        getFunctionQuantifier(c1) |> SqlLiteral


    // TODO should `interop-base` provide ImmList ?
    pub def getOperandList(c: SqlCall): ##java.util.List = 
        import org.apache.calcite.sql.SqlCall.getOperandList(): ##java.util.List \ {};
        let SqlCall(c1) = c;
        getOperandList(c1)

    pub def isCountStar(c: SqlCall): Bool = 
        import org.apache.calcite.sql.SqlCall.isCountStar(): Bool \ {};
        let SqlCall(c1) = c;
        isCountStar(c1)

    pub def isExpanded(c: SqlCall): Bool = 
        import org.apache.calcite.sql.SqlCall.isExpanded(): Bool \ {};
        let SqlCall(c1) = c;
        isExpanded(c1)

    pub def operandCount(c: SqlCall): Int32 = 
        import org.apache.calcite.sql.SqlCall.operandCount(): Int32 \ {};
        let SqlCall(c1) = c;
        operandCount(c1)

}
