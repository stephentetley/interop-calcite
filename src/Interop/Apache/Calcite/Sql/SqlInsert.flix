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

    pub enum SqlInsert(##org.apache.calcite.sql.SqlInsert)

    instance ToString[SqlInsert] {
        pub def toString(x: SqlInsert): String = 
            Interop/Apache/Calcite/Sql/SqlInsert.toString(x)
    }

}

namespace Interop/Apache/Calcite/Sql/SqlInsert {

    use Interop/Apache/Calcite/Sql.SqlInsert
    use Interop/Apache/Calcite/Sql.SqlInsert.{SqlInsert}


    pub def getHH(c: SqlInsert): ##org.apache.calcite.sql.SqlInsert = 
        let SqlInsert(c1) = c;
        c1


    pub def toString(c: SqlInsert): String = 
        import org.apache.calcite.sql.SqlInsert.toString(): String \ {};
        let SqlInsert(c1) = c;
        toString(c1)

}
