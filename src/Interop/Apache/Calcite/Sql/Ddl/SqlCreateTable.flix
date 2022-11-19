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

    pub enum SqlCreateTable(##org.apache.calcite.sql.ddl.SqlCreateTable)

    instance ToString[SqlCreateTable] {
        pub def toString(x: SqlCreateTable): String = 
            Interop/Apache/Calcite/Sql/Ddl/SqlCreateTable.toString(x)
    }

    instance Interop/Apache/Calcite/Sql.SubSqlNode[SqlCreateTable] {
        pub def toSqlNode(x: SqlCreateTable): SqlNode = 
            let SqlCreateTable(x1) = x;
            SqlNode(x1 as ##org.apache.calcite.sql.SqlNode)

        pub def fromSqlNode(x: SqlNode): SqlCreateTable = 
            let SqlNode(x1) = x;
            SqlCreateTable(x1 as ##org.apache.calcite.sql.ddl.SqlCreateTable) 
    }
}

namespace Interop/Apache/Calcite/Sql/Ddl/SqlCreateTable {

    use Interop/Apache/Calcite/Sql/Ddl.SqlCreateTable
    use Interop/Apache/Calcite/Sql/Ddl.SqlCreateTable.{SqlCreateTable}
    use Interop/Apache/Calcite/Sql.SqlIdentifier
    use Interop/Apache/Calcite/Sql.SqlIdentifier.{SqlIdentifier}

    pub def getHH(ct: SqlCreateTable): ##org.apache.calcite.sql.ddl.SqlCreateTable = 
        let SqlCreateTable(ct1) = ct;
        ct1


    pub def toString(ct: SqlCreateTable): String = 
        import org.apache.calcite.sql.ddl.SqlCreateTable.toString(): String \ {};
        let SqlCreateTable(ct1) = ct;
        toString(ct1)


    // TODO should `interop-base` provide ImmList ?
    pub def getOperandList(c: SqlCreateTable): ##java.util.List = 
        import org.apache.calcite.sql.ddl.SqlCreateTable.getOperandList(): ##java.util.List \ {};
        let SqlCreateTable(c1) = c;
        getOperandList(c1)

    pub def name(c: SqlCreateTable): SqlIdentifier = 
        import get org.apache.calcite.sql.ddl.SqlCreateTable.name: ##org.apache.calcite.sql.SqlIdentifier \ {} as get_name;
        let SqlCreateTable(c1) = c;
        get_name(c1) |> SqlIdentifier


}
