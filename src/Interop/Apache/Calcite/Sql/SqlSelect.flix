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

    pub enum SqlSelect(##org.apache.calcite.sql.SqlSelect)

    instance ToString[SqlSelect] {
        pub def toString(x: SqlSelect): String = 
            Interop/Apache/Calcite/Sql/SqlSelect.toString(x)
    }

}

namespace Interop/Apache/Calcite/Sql/SqlSelect {

    use Interop/Apache/Calcite/Sql.SqlSelect
    use Interop/Apache/Calcite/Sql.SqlSelect.{SqlSelect}


    pub def getHH(s: SqlSelect): ##org.apache.calcite.sql.SqlSelect = 
        let SqlSelect(s1) = s;
        s1


    pub def toString(s: SqlSelect): String = 
        import org.apache.calcite.sql.SqlSelect.toString(): String \ {};
        let SqlSelect(s1) = s;
        toString(s1)

}
