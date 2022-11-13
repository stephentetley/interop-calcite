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

    pub enum SqlDynamicParam(##org.apache.calcite.sql.SqlDynamicParam)

    instance ToString[SqlDynamicParam] {
        pub def toString(x: SqlDynamicParam): String = 
            Interop/Apache/Calcite/Sql/SqlDynamicParam.toString(x)
    }

}

namespace Interop/Apache/Calcite/Sql/SqlDynamicParam {

    use Interop/Apache/Calcite/Sql.SqlDynamicParam
    use Interop/Apache/Calcite/Sql.SqlDynamicParam.{SqlDynamicParam}


    pub def getHH(dp: SqlDynamicParam): ##org.apache.calcite.sql.SqlDynamicParam = 
        let SqlDynamicParam(dp1) = dp;
        dp1


    pub def toString(dp: SqlDynamicParam): String = 
        import org.apache.calcite.sql.SqlDynamicParam.toString(): String \ {};
        let SqlDynamicParam(dp1) = dp;
        toString(dp1)

}
