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


namespace Interop/Apache/Calcite/Schema {

    pub enum ColumnStrategy(##org.apache.calcite.schema.ColumnStrategy)

    instance ToString[ColumnStrategy] {
        pub def toString(x: ColumnStrategy): String = 
            Interop/Apache/Calcite/Schema/ColumnStrategy.toString(x)
    }

}

namespace Interop/Apache/Calcite/Schema/ColumnStrategy {

    use Interop/Apache/Calcite/Schema.ColumnStrategy
    use Interop/Apache/Calcite/Schema.ColumnStrategy.{ColumnStrategy}


    pub def getHH(cs: ColumnStrategy): ##org.apache.calcite.schema.ColumnStrategy = 
        let ColumnStrategy(cs1) = cs;
        cs1


    pub def toString(cs: ColumnStrategy): String = 
        import org.apache.calcite.schema.ColumnStrategy.toString(): String \ {};
        let ColumnStrategy(cs1) = cs;
        toString(cs1)

    pub def default(): ColumnStrategy = 
        import static get org.apache.calcite.schema.ColumnStrategy.DEFAULT: ##org.apache.calcite.schema.ColumnStrategy \ {} as get_DEFAULT;
        get_DEFAULT() |> ColumnStrategy

    pub def not_nullable(): ColumnStrategy = 
        import static get org.apache.calcite.schema.ColumnStrategy.NOT_NULLABLE: ##org.apache.calcite.schema.ColumnStrategy \ {} as get_NOT_NULLABLE;
        get_NOT_NULLABLE() |> ColumnStrategy

    pub def nullable(): ColumnStrategy = 
        import static get org.apache.calcite.schema.ColumnStrategy.NULLABLE: ##org.apache.calcite.schema.ColumnStrategy \ {} as get_NULLABLE;
        get_NULLABLE() |> ColumnStrategy

    pub def stored(): ColumnStrategy = 
        import static get org.apache.calcite.schema.ColumnStrategy.STORED: ##org.apache.calcite.schema.ColumnStrategy \ {} as get_STORED;
        get_STORED() |> ColumnStrategy

    pub def virtual(): ColumnStrategy = 
        import static get org.apache.calcite.schema.ColumnStrategy.VIRTUAL: ##org.apache.calcite.schema.ColumnStrategy \ {} as get_VIRTUAL;
        get_VIRTUAL() |> ColumnStrategy

}
