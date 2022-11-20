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

    pub enum SqlLiteral(##org.apache.calcite.sql.SqlLiteral)

    instance ToString[SqlLiteral] {
        pub def toString(x: SqlLiteral): String = 
            Interop/Apache/Calcite/Sql/SqlLiteral.toString(x)
    }

    instance Eq[SqlLiteral] {
        pub def eq(x: SqlLiteral, y: SqlLiteral): Bool = 
            Interop/Apache/Calcite/Sql/SqlLiteral.equals(x, y)
    }

}

namespace Interop/Apache/Calcite/Sql/SqlLiteral {

    use Interop/Apache/Calcite/Sql.SqlLiteral
    use Interop/Apache/Calcite/Sql.SqlLiteral.{SqlLiteral}
    use Interop/Apache/Calcite/Sql.SqlKind
    use Interop/Apache/Calcite/Sql.SqlKind.{SqlKind}
    use Interop/Apache/Calcite/Sql/Type.SqlTypeName
    use Interop/Apache/Calcite/Sql/Type.SqlTypeName.{SqlTypeName}


    pub def getHH(l: SqlLiteral): ##org.apache.calcite.sql.SqlLiteral = 
        let SqlLiteral(l1) = l;
        l1


    pub def toString(l: SqlLiteral): String = 
        import org.apache.calcite.sql.SqlLiteral.toString(): String \ {};
        let SqlLiteral(l1) = l;
        toString(l1)


    pub def equals(x: SqlLiteral, y: SqlLiteral): Bool = 
        import org.apache.calcite.sql.SqlLiteral.equals(##java.lang.Object): Bool \ {};
        let SqlLiteral(x1) = x;
        let SqlLiteral(y1) = y;
        equals(x1, y1 as ##java.lang.Object)


    pub def getKind(l: SqlLiteral): SqlKind = 
        import org.apache.calcite.sql.SqlLiteral.getKind(): ##org.apache.calcite.sql.SqlKind \ {};
        let SqlLiteral(l1) = l;
        getKind(l1) |> SqlKind

    pub def getTypeName(l: SqlLiteral): SqlTypeName = 
        import org.apache.calcite.sql.SqlLiteral.getTypeName(): ##org.apache.calcite.sql.type.SqlTypeName \ {};
        let SqlLiteral(l1) = l;
        getTypeName(l1) |> SqlTypeName

}
