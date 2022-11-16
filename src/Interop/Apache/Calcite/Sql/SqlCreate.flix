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

    pub enum SqlCreate(##org.apache.calcite.sql.SqlCreate)

    instance ToString[SqlCreate] {
        pub def toString(x: SqlCreate): String = 
            Interop/Apache/Calcite/Sql/SqlCreate.toString(x)
    }

}

namespace Interop/Apache/Calcite/Sql/SqlCreate {

    use Interop/Apache/Calcite/Sql.SqlCreate
    use Interop/Apache/Calcite/Sql.SqlCreate.{SqlCreate}


    pub def getHH(c: SqlCreate): ##org.apache.calcite.sql.SqlCreate = 
        let SqlCreate(c1) = c;
        c1


    pub def toString(c: SqlCreate): String = 
        import org.apache.calcite.sql.SqlCreate.toString(): String \ {};
        let SqlCreate(c1) = c;
        toString(c1)

    pub def ifNotExists(c: SqlCreate): Bool = 
        import get org.apache.calcite.sql.SqlCreate.ifNotExists: Bool \ {} as get_ifNotExists;
        let SqlCreate(c1) = c;
        get_ifNotExists(c1)


}
