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

    pub enum SqlDataTypeSpec(##org.apache.calcite.sql.SqlDataTypeSpec)

    instance ToString[SqlDataTypeSpec] {
        pub def toString(x: SqlDataTypeSpec): String = 
            Interop/Apache/Calcite/Sql/SqlDataTypeSpec.toString(x)
    }

}

namespace Interop/Apache/Calcite/Sql/SqlDataTypeSpec {

    use Interop/Apache/Calcite/Sql.SqlDataTypeSpec
    use Interop/Apache/Calcite/Sql.SqlDataTypeSpec.{SqlDataTypeSpec}
    use Interop/Apache/Calcite/Sql.SqlIdentifier
    use Interop/Apache/Calcite/Sql.SqlIdentifier.{SqlIdentifier}


    pub def getHH(dt: SqlDataTypeSpec): ##org.apache.calcite.sql.SqlDataTypeSpec = 
        let SqlDataTypeSpec(dt1) = dt;
        dt1


    pub def toString(dt: SqlDataTypeSpec): String = 
        import org.apache.calcite.sql.SqlDataTypeSpec.toString(): String \ {};
        let SqlDataTypeSpec(dt1) = dt;
        toString(dt1)


    pub def getNullable(dt: SqlDataTypeSpec): Bool = 
        import org.apache.calcite.sql.SqlDataTypeSpec.getNullable(): ##java.lang.Boolean \ {};
        import java.lang.Boolean.booleanValue(): Bool \ {};     /// TODO - use interop-base
        let SqlDataTypeSpec(dt1) = dt;
        getNullable(dt1) |> booleanValue
        
    pub def getTypeName(dt: SqlDataTypeSpec): SqlIdentifier = 
        import org.apache.calcite.sql.SqlDataTypeSpec.getTypeName(): ##org.apache.calcite.sql.SqlIdentifier \ {};
        let SqlDataTypeSpec(dt1) = dt;
        getTypeName(dt1) |> SqlIdentifier

    pub def getComponentTypeSpec(dt: SqlDataTypeSpec): SqlDataTypeSpec = 
        import org.apache.calcite.sql.SqlDataTypeSpec.getComponentTypeSpec(): ##org.apache.calcite.sql.SqlDataTypeSpec \ {};
        let SqlDataTypeSpec(dt1) = dt;
        getComponentTypeSpec(dt1) |> SqlDataTypeSpec

}
