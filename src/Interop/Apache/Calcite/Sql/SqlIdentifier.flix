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

    pub enum SqlIdentifier(##org.apache.calcite.sql.SqlIdentifier)

    instance ToString[SqlIdentifier] {
        pub def toString(x: SqlIdentifier): String = 
            Interop/Apache/Calcite/Sql/SqlIdentifier.toString(x)
    }

}

namespace Interop/Apache/Calcite/Sql/SqlIdentifier {

    use Interop/Apache/Calcite/Sql.SqlIdentifier
    use Interop/Apache/Calcite/Sql.SqlIdentifier.{SqlIdentifier}
    use Interop/Apache/Calcite/Sql.SqlKind
    use Interop/Apache/Calcite/Sql.SqlKind.{SqlKind}


    pub def getHH(id: SqlIdentifier): ##org.apache.calcite.sql.SqlIdentifier = 
        let SqlIdentifier(id1) = id;
        id1


    pub def toString(id: SqlIdentifier): String = 
        import org.apache.calcite.sql.SqlIdentifier.toString(): String \ {};
        let SqlIdentifier(id1) = id;
        toString(id1)

    pub def getKind(id: SqlIdentifier): SqlKind = 
        import org.apache.calcite.sql.SqlIdentifier.getKind(): ##org.apache.calcite.sql.SqlKind \ {};
        let SqlIdentifier(id1) = id;
        getKind(id1) |> SqlKind


    pub def isSimple(id: SqlIdentifier): Bool = 
        import org.apache.calcite.sql.SqlIdentifier.isSimple(): Bool \ {};
        let SqlIdentifier(id1) = id;
        isSimple(id1)

    pub def isStar(id: SqlIdentifier): Bool = 
        import org.apache.calcite.sql.SqlIdentifier.isStar(): Bool \ {};
        let SqlIdentifier(id1) = id;
        isStar(id1)

}
