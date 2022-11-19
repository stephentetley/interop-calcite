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

    pub enum SqlNode(##org.apache.calcite.sql.SqlNode)

    instance ToString[SqlNode] {
        pub def toString(x: SqlNode): String = 
            Interop/Apache/Calcite/Sql/SqlNode.toString(x)
    }

    pub class SubSqlNode[a] {
        pub def toSqlNode(s: a): SqlNode
        pub def fromSqlNode(s: SqlNode): a
    }
}

namespace Interop/Apache/Calcite/Sql/SqlNode {

    use Interop/Apache/Calcite/Sql.SqlNode
    use Interop/Apache/Calcite/Sql.SqlNode.{SqlNode}
    use Interop/Apache/Calcite/Sql.SqlKind
    use Interop/Apache/Calcite/Sql.SqlKind.{SqlKind}


    pub def getHH(n: SqlNode): ##org.apache.calcite.sql.SqlNode = 
        let SqlNode(n1) = n;
        n1


    pub def toString(n: SqlNode): String = 
        import org.apache.calcite.sql.SqlNode.toString(): String \ {};
        let SqlNode(n1) = n;
        toString(n1)

    pub def getKind(n: SqlNode): SqlKind = 
        import org.apache.calcite.sql.SqlNode.getKind(): ##org.apache.calcite.sql.SqlKind \ {};
        let SqlNode(n1) = n;
        getKind(n1) |> SqlKind

}
