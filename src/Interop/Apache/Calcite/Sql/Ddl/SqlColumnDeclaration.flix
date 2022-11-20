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

    pub enum SqlColumnDeclaration(##org.apache.calcite.sql.ddl.SqlColumnDeclaration)

    instance ToString[SqlColumnDeclaration] {
        pub def toString(x: SqlColumnDeclaration): String = 
            Interop/Apache/Calcite/Sql/Ddl/SqlColumnDeclaration.toString(x)
    }


}

namespace Interop/Apache/Calcite/Sql/Ddl/SqlColumnDeclaration {

    use Interop/Apache/Calcite/Sql/Ddl.SqlColumnDeclaration
    use Interop/Apache/Calcite/Sql/Ddl.SqlColumnDeclaration.{SqlColumnDeclaration}
    use Interop/Apache/Calcite/Schema.ColumnStrategy
    use Interop/Apache/Calcite/Schema.ColumnStrategy.{ColumnStrategy}
    use Interop/Apache/Calcite/Sql.SqlDataTypeSpec
    use Interop/Apache/Calcite/Sql.SqlDataTypeSpec.{SqlDataTypeSpec}
    use Interop/Apache/Calcite/Sql.SqlIdentifier
    use Interop/Apache/Calcite/Sql.SqlIdentifier.{SqlIdentifier}
    use Interop/Apache/Calcite/Sql.SqlOperator
    use Interop/Apache/Calcite/Sql.SqlOperator.{SqlOperator}

    pub def getHH(cd: SqlColumnDeclaration): ##org.apache.calcite.sql.ddl.SqlColumnDeclaration = 
        let SqlColumnDeclaration(cd1) = cd;
        cd1

    pub def toString(cd: SqlColumnDeclaration): String = 
        import org.apache.calcite.sql.ddl.SqlColumnDeclaration.toString(): String \ {};
        let SqlColumnDeclaration(cd1) = cd;
        toString(cd1)


    pub def getOperandList(cd: SqlColumnDeclaration): ##java.util.List = 
        import org.apache.calcite.sql.ddl.SqlColumnDeclaration.getOperandList(): ##java.util.List \ {};
        let SqlColumnDeclaration(cd1) = cd;
        getOperandList(cd1)


    pub def getOperator(cd: SqlColumnDeclaration): SqlOperator = 
        import org.apache.calcite.sql.ddl.SqlColumnDeclaration.getOperator(): ##org.apache.calcite.sql.SqlOperator \ {};
        let SqlColumnDeclaration(cd1) = cd;
        getOperator(cd1) |> SqlOperator

    pub def name(cd: SqlColumnDeclaration): SqlIdentifier = 
        import get org.apache.calcite.sql.ddl.SqlColumnDeclaration.name: ##org.apache.calcite.sql.SqlIdentifier \ {} as get_name;
        let SqlColumnDeclaration(cd1) = cd;
        get_name(cd1) |> SqlIdentifier

    pub def dataType(cd: SqlColumnDeclaration): SqlDataTypeSpec = 
        import get org.apache.calcite.sql.ddl.SqlColumnDeclaration.dataType: ##org.apache.calcite.sql.SqlDataTypeSpec \ {} as get_dataType;
        let SqlColumnDeclaration(cd1) = cd;
        get_dataType(cd1) |> SqlDataTypeSpec

    pub def strategy(cd: SqlColumnDeclaration): ColumnStrategy = 
        import get org.apache.calcite.sql.ddl.SqlColumnDeclaration.strategy: ##org.apache.calcite.schema.ColumnStrategy \ {} as get_strategy;
        let SqlColumnDeclaration(cd1) = cd;
        get_strategy(cd1) |> ColumnStrategy

}
