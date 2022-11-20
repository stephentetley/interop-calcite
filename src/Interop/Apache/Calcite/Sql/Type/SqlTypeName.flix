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


namespace Interop/Apache/Calcite/Sql/Type {

    pub enum SqlTypeName(##org.apache.calcite.sql.type.SqlTypeName)

    instance ToString[SqlTypeName] {
        pub def toString(x: SqlTypeName): String = 
            Interop/Apache/Calcite/Sql/Type/SqlTypeName.toString(x)
    }

}

namespace Interop/Apache/Calcite/Sql/Type/SqlTypeName {

    use Interop/Apache/Calcite/Sql/Type.SqlTypeName
    use Interop/Apache/Calcite/Sql/Type.SqlTypeName.{SqlTypeName}


    pub def getHH(tn: SqlTypeName): ##org.apache.calcite.sql.type.SqlTypeName = 
        let SqlTypeName(tn1) = tn;
        tn1


    pub def toString(tn: SqlTypeName): String = 
        import org.apache.calcite.sql.type.SqlTypeName.toString(): String \ {};
        let SqlTypeName(tn1) = tn;
        toString(tn1)

    pub def any(): SqlTypeName = 
        import static get org.apache.calcite.sql.type.SqlTypeName.ANY: ##org.apache.calcite.sql.type.SqlTypeName \ {} as get_ANY;
        get_ANY() |> SqlTypeName

    pub def array(): SqlTypeName = 
        import static get org.apache.calcite.sql.type.SqlTypeName.ARRAY: ##org.apache.calcite.sql.type.SqlTypeName \ {} as get_ARRAY;
        get_ARRAY() |> SqlTypeName

    pub def bigint(): SqlTypeName = 
        import static get org.apache.calcite.sql.type.SqlTypeName.BIGINT: ##org.apache.calcite.sql.type.SqlTypeName \ {} as get_BIGINT;
        get_BIGINT() |> SqlTypeName

    pub def binary(): SqlTypeName = 
        import static get org.apache.calcite.sql.type.SqlTypeName.BINARY: ##org.apache.calcite.sql.type.SqlTypeName \ {} as get_BINARY;
        get_BINARY() |> SqlTypeName

    pub def boolean(): SqlTypeName = 
        import static get org.apache.calcite.sql.type.SqlTypeName.BOOLEAN: ##org.apache.calcite.sql.type.SqlTypeName \ {} as get_BOOLEAN;
        get_BOOLEAN() |> SqlTypeName

    pub def char(): SqlTypeName = 
        import static get org.apache.calcite.sql.type.SqlTypeName.CHAR: ##org.apache.calcite.sql.type.SqlTypeName \ {} as get_CHAR;
        get_CHAR() |> SqlTypeName

    pub def column_list(): SqlTypeName = 
        import static get org.apache.calcite.sql.type.SqlTypeName.COLUMN_LIST: ##org.apache.calcite.sql.type.SqlTypeName \ {} as get_COLUMN_LIST;
        get_COLUMN_LIST() |> SqlTypeName

    pub def cursor(): SqlTypeName = 
        import static get org.apache.calcite.sql.type.SqlTypeName.CURSOR: ##org.apache.calcite.sql.type.SqlTypeName \ {} as get_CURSOR;
        get_CURSOR() |> SqlTypeName

    pub def date(): SqlTypeName = 
        import static get org.apache.calcite.sql.type.SqlTypeName.DATE: ##org.apache.calcite.sql.type.SqlTypeName \ {} as get_DATE;
        get_DATE() |> SqlTypeName

    pub def decimal(): SqlTypeName = 
        import static get org.apache.calcite.sql.type.SqlTypeName.DECIMAL: ##org.apache.calcite.sql.type.SqlTypeName \ {} as get_DECIMAL;
        get_DECIMAL() |> SqlTypeName

    pub def distinct(): SqlTypeName = 
        import static get org.apache.calcite.sql.type.SqlTypeName.DISTINCT: ##org.apache.calcite.sql.type.SqlTypeName \ {} as get_DISTINCT;
        get_DISTINCT() |> SqlTypeName

    pub def double(): SqlTypeName = 
        import static get org.apache.calcite.sql.type.SqlTypeName.DOUBLE: ##org.apache.calcite.sql.type.SqlTypeName \ {} as get_DOUBLE;
        get_DOUBLE() |> SqlTypeName

    pub def dynamic_star(): SqlTypeName = 
        import static get org.apache.calcite.sql.type.SqlTypeName.DYNAMIC_STAR: ##org.apache.calcite.sql.type.SqlTypeName \ {} as get_DYNAMIC_STAR;
        get_DYNAMIC_STAR() |> SqlTypeName

    pub def float(): SqlTypeName = 
        import static get org.apache.calcite.sql.type.SqlTypeName.FLOAT: ##org.apache.calcite.sql.type.SqlTypeName \ {} as get_FLOAT;
        get_FLOAT() |> SqlTypeName

    pub def geometry(): SqlTypeName = 
        import static get org.apache.calcite.sql.type.SqlTypeName.GEOMETRY: ##org.apache.calcite.sql.type.SqlTypeName \ {} as get_GEOMETRY;
        get_GEOMETRY() |> SqlTypeName

    pub def integer(): SqlTypeName = 
        import static get org.apache.calcite.sql.type.SqlTypeName.INTEGER: ##org.apache.calcite.sql.type.SqlTypeName \ {} as get_INTEGER;
        get_INTEGER() |> SqlTypeName

    pub def interval_day(): SqlTypeName = 
        import static get org.apache.calcite.sql.type.SqlTypeName.INTERVAL_DAY: ##org.apache.calcite.sql.type.SqlTypeName \ {} as get_INTERVAL_DAY;
        get_INTERVAL_DAY() |> SqlTypeName

    pub def interval_day_hour(): SqlTypeName = 
        import static get org.apache.calcite.sql.type.SqlTypeName.INTERVAL_DAY_HOUR: ##org.apache.calcite.sql.type.SqlTypeName \ {} as get_INTERVAL_DAY_HOUR;
        get_INTERVAL_DAY_HOUR() |> SqlTypeName

    pub def interval_day_minute(): SqlTypeName = 
        import static get org.apache.calcite.sql.type.SqlTypeName.INTERVAL_DAY_MINUTE: ##org.apache.calcite.sql.type.SqlTypeName \ {} as get_INTERVAL_DAY_MINUTE;
        get_INTERVAL_DAY_MINUTE() |> SqlTypeName

    pub def interval_day_second(): SqlTypeName = 
        import static get org.apache.calcite.sql.type.SqlTypeName.INTERVAL_DAY_SECOND: ##org.apache.calcite.sql.type.SqlTypeName \ {} as get_INTERVAL_DAY_SECOND;
        get_INTERVAL_DAY_SECOND() |> SqlTypeName

    pub def interval_hour(): SqlTypeName = 
        import static get org.apache.calcite.sql.type.SqlTypeName.INTERVAL_HOUR: ##org.apache.calcite.sql.type.SqlTypeName \ {} as get_INTERVAL_HOUR;
        get_INTERVAL_HOUR() |> SqlTypeName

    pub def interval_hour_minute(): SqlTypeName = 
        import static get org.apache.calcite.sql.type.SqlTypeName.INTERVAL_HOUR_MINUTE: ##org.apache.calcite.sql.type.SqlTypeName \ {} as get_INTERVAL_HOUR_MINUTE;
        get_INTERVAL_HOUR_MINUTE() |> SqlTypeName

    pub def interval_hour_second(): SqlTypeName = 
        import static get org.apache.calcite.sql.type.SqlTypeName.INTERVAL_HOUR_SECOND: ##org.apache.calcite.sql.type.SqlTypeName \ {} as get_INTERVAL_HOUR_SECOND;
        get_INTERVAL_HOUR_SECOND() |> SqlTypeName

    pub def interval_minute(): SqlTypeName = 
        import static get org.apache.calcite.sql.type.SqlTypeName.INTERVAL_MINUTE: ##org.apache.calcite.sql.type.SqlTypeName \ {} as get_INTERVAL_MINUTE;
        get_INTERVAL_MINUTE() |> SqlTypeName

    pub def interval_minute_second(): SqlTypeName = 
        import static get org.apache.calcite.sql.type.SqlTypeName.INTERVAL_MINUTE_SECOND: ##org.apache.calcite.sql.type.SqlTypeName \ {} as get_INTERVAL_MINUTE_SECOND;
        get_INTERVAL_MINUTE_SECOND() |> SqlTypeName

    pub def interval_month(): SqlTypeName = 
        import static get org.apache.calcite.sql.type.SqlTypeName.INTERVAL_MONTH: ##org.apache.calcite.sql.type.SqlTypeName \ {} as get_INTERVAL_MONTH;
        get_INTERVAL_MONTH() |> SqlTypeName

    pub def interval_second(): SqlTypeName = 
        import static get org.apache.calcite.sql.type.SqlTypeName.INTERVAL_SECOND: ##org.apache.calcite.sql.type.SqlTypeName \ {} as get_INTERVAL_SECOND;
        get_INTERVAL_SECOND() |> SqlTypeName

    pub def interval_year(): SqlTypeName = 
        import static get org.apache.calcite.sql.type.SqlTypeName.INTERVAL_YEAR: ##org.apache.calcite.sql.type.SqlTypeName \ {} as get_INTERVAL_YEAR;
        get_INTERVAL_YEAR() |> SqlTypeName

    pub def interval_year_month(): SqlTypeName = 
        import static get org.apache.calcite.sql.type.SqlTypeName.INTERVAL_YEAR_MONTH: ##org.apache.calcite.sql.type.SqlTypeName \ {} as get_INTERVAL_YEAR_MONTH;
        get_INTERVAL_YEAR_MONTH() |> SqlTypeName

    pub def map(): SqlTypeName = 
        import static get org.apache.calcite.sql.type.SqlTypeName.MAP: ##org.apache.calcite.sql.type.SqlTypeName \ {} as get_MAP;
        get_MAP() |> SqlTypeName

    pub def multiset(): SqlTypeName = 
        import static get org.apache.calcite.sql.type.SqlTypeName.MULTISET: ##org.apache.calcite.sql.type.SqlTypeName \ {} as get_MULTISET;
        get_MULTISET() |> SqlTypeName

    pub def nullz(): SqlTypeName = 
        import static get org.apache.calcite.sql.type.SqlTypeName.NULL: ##org.apache.calcite.sql.type.SqlTypeName \ {} as get_NULL;
        get_NULL() |> SqlTypeName

    pub def other(): SqlTypeName = 
        import static get org.apache.calcite.sql.type.SqlTypeName.OTHER: ##org.apache.calcite.sql.type.SqlTypeName \ {} as get_OTHER;
        get_OTHER() |> SqlTypeName

    pub def real(): SqlTypeName = 
        import static get org.apache.calcite.sql.type.SqlTypeName.REAL: ##org.apache.calcite.sql.type.SqlTypeName \ {} as get_REAL;
        get_REAL() |> SqlTypeName

    pub def row(): SqlTypeName = 
        import static get org.apache.calcite.sql.type.SqlTypeName.ROW: ##org.apache.calcite.sql.type.SqlTypeName \ {} as get_ROW;
        get_ROW() |> SqlTypeName

    pub def sarg(): SqlTypeName = 
        import static get org.apache.calcite.sql.type.SqlTypeName.SARG: ##org.apache.calcite.sql.type.SqlTypeName \ {} as get_SARG;
        get_SARG() |> SqlTypeName

    pub def smallint(): SqlTypeName = 
        import static get org.apache.calcite.sql.type.SqlTypeName.SMALLINT: ##org.apache.calcite.sql.type.SqlTypeName \ {} as get_SMALLINT;
        get_SMALLINT() |> SqlTypeName

    pub def structured(): SqlTypeName = 
        import static get org.apache.calcite.sql.type.SqlTypeName.STRUCTURED: ##org.apache.calcite.sql.type.SqlTypeName \ {} as get_STRUCTURED;
        get_STRUCTURED() |> SqlTypeName

    pub def symbol(): SqlTypeName = 
        import static get org.apache.calcite.sql.type.SqlTypeName.SYMBOL: ##org.apache.calcite.sql.type.SqlTypeName \ {} as get_SYMBOL;
        get_SYMBOL() |> SqlTypeName

    pub def time(): SqlTypeName = 
        import static get org.apache.calcite.sql.type.SqlTypeName.TIME: ##org.apache.calcite.sql.type.SqlTypeName \ {} as get_TIME;
        get_TIME() |> SqlTypeName

    pub def time_with_local_time_zone(): SqlTypeName = 
        import static get org.apache.calcite.sql.type.SqlTypeName.TIME_WITH_LOCAL_TIME_ZONE: ##org.apache.calcite.sql.type.SqlTypeName \ {} as get_TIME_WITH_LOCAL_TIME_ZONE;
        get_TIME_WITH_LOCAL_TIME_ZONE() |> SqlTypeName

    pub def timestamp(): SqlTypeName = 
        import static get org.apache.calcite.sql.type.SqlTypeName.TIMESTAMP: ##org.apache.calcite.sql.type.SqlTypeName \ {} as get_TIMESTAMP;
        get_TIMESTAMP() |> SqlTypeName

    pub def timestamp_with_local_time_zone(): SqlTypeName = 
        import static get org.apache.calcite.sql.type.SqlTypeName.TIMESTAMP_WITH_LOCAL_TIME_ZONE: ##org.apache.calcite.sql.type.SqlTypeName \ {} as get_TIMESTAMP_WITH_LOCAL_TIME_ZONE;
        get_TIMESTAMP_WITH_LOCAL_TIME_ZONE() |> SqlTypeName

    pub def tinyint(): SqlTypeName = 
        import static get org.apache.calcite.sql.type.SqlTypeName.TINYINT: ##org.apache.calcite.sql.type.SqlTypeName \ {} as get_TINYINT;
        get_TINYINT() |> SqlTypeName

    pub def unknown(): SqlTypeName = 
        import static get org.apache.calcite.sql.type.SqlTypeName.UNKNOWN: ##org.apache.calcite.sql.type.SqlTypeName \ {} as get_UNKNOWN;
        get_UNKNOWN() |> SqlTypeName

    pub def varbinary(): SqlTypeName = 
        import static get org.apache.calcite.sql.type.SqlTypeName.VARBINARY: ##org.apache.calcite.sql.type.SqlTypeName \ {} as get_VARBINARY;
        get_VARBINARY() |> SqlTypeName

    pub def varchar(): SqlTypeName = 
        import static get org.apache.calcite.sql.type.SqlTypeName.VARCHAR: ##org.apache.calcite.sql.type.SqlTypeName \ {} as get_VARCHAR;
        get_VARCHAR() |> SqlTypeName

}
