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

    pub enum SqlCreateView(##org.apache.calcite.sql.ddl.SqlCreateView)

    instance ToString[SqlCreateView] {
        pub def toString(x: SqlCreateView): String = 
            Interop/Apache/Calcite/Sql/Ddl/SqlCreateView.toString(x)
    }

    instance Interop/Apache/Calcite/Sql.SubSqlNode[SqlCreateView] {
        pub def toSqlNode(x: SqlCreateView): SqlNode = 
            let SqlCreateView(x1) = x;
            SqlNode(x1 as ##org.apache.calcite.sql.SqlNode)

        pub def fromSqlNode(x: SqlNode): SqlCreateView = 
            let SqlNode(x1) = x;
            SqlCreateView(x1 as ##org.apache.calcite.sql.ddl.SqlCreateView) 
    }
}

namespace Interop/Apache/Calcite/Sql/Ddl/SqlCreateView {

    use Interop/Apache/Calcite/Sql/Ddl.SqlCreateView
    use Interop/Apache/Calcite/Sql/Ddl.SqlCreateView.{SqlCreateView}
    use Interop/Apache/Calcite/Sql.SqlIdentifier
    use Interop/Apache/Calcite/Sql.SqlIdentifier.{SqlIdentifier}

    pub def getHH(cv: SqlCreateView): ##org.apache.calcite.sql.ddl.SqlCreateView = 
        let SqlCreateView(cv1) = cv;
        cv1

    pub def toString(cv: SqlCreateView): String = 
        import org.apache.calcite.sql.ddl.SqlCreateView.toString(): String \ {};
        let SqlCreateView(cv1) = cv;
        toString(cv1)


    // TODO should `interop-base` provide an ImmList ?
    pub def getOperandList(c: SqlCreateView): ##java.util.List = 
        import org.apache.calcite.sql.ddl.SqlCreateView.getOperandList(): ##java.util.List \ {};
        let SqlCreateView(c1) = c;
        getOperandList(c1)

    pub def name(c: SqlCreateView): SqlIdentifier = 
        import get org.apache.calcite.sql.ddl.SqlCreateView.name: ##org.apache.calcite.sql.SqlIdentifier \ {} as get_name;
        let SqlCreateView(c1) = c;
        get_name(c1) |> SqlIdentifier


}
