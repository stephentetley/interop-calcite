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


    pub def getHH(c: SqlCall): ##org.apache.calcite.sql.SqlCall = 
        let SqlCall(c1) = c;
        c1


    pub def toString(c: SqlCall): String = 
        import org.apache.calcite.sql.SqlCall.toString(): String \ {};
        let SqlCall(c1) = c;
        toString(c1)

}