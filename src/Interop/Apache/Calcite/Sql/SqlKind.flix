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

    pub enum SqlKind(##org.apache.calcite.sql.SqlKind)

    instance ToString[SqlKind] {
        pub def toString(x: SqlKind): String = 
            Interop/Apache/Calcite/Sql/SqlKind.toString(x)
    }

    instance Eq[SqlKind] {
        pub def eq(x: SqlKind, y: SqlKind): Bool = 
            import java.lang.Enum.equals(##java.lang.Object): Bool \ {};
            let SqlKind(x1) = x;
            let SqlKind(y1) = y;
            equals(x1 as ##java.lang.Enum, y1 as ##java.lang.Object)
    }

}

namespace Interop/Apache/Calcite/Sql/SqlKind {

    use Interop/Apache/Calcite/Sql.SqlKind
    use Interop/Apache/Calcite/Sql.SqlKind.{SqlKind}


    pub def getHH(k: SqlKind): ##org.apache.calcite.sql.SqlKind = 
        let SqlKind(k1) = k;
        k1


    pub def toString(k: SqlKind): String = 
        import org.apache.calcite.sql.SqlKind.toString(): String \ {};
        let SqlKind(k1) = k;
        toString(k1)



    pub def all(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.ALL: ##org.apache.calcite.sql.SqlKind \ {} as get_ALL;
        get_ALL() |> SqlKind  

    pub def alter_index(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.ALTER_INDEX: ##org.apache.calcite.sql.SqlKind \ {} as get_ALTER_INDEX;
        get_ALTER_INDEX() |> SqlKind  

    pub def alter_materialized_view(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.ALTER_MATERIALIZED_VIEW: ##org.apache.calcite.sql.SqlKind \ {} as get_ALTER_MATERIALIZED_VIEW;
        get_ALTER_MATERIALIZED_VIEW() |> SqlKind 

    pub def alter_sequence(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.ALTER_SEQUENCE: ##org.apache.calcite.sql.SqlKind \ {} as get_ALTER_SEQUENCE;
        get_ALTER_SEQUENCE() |> SqlKind 

    pub def alter_session(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.ALTER_SESSION: ##org.apache.calcite.sql.SqlKind \ {} as get_ALTER_SESSION;
        get_ALTER_SESSION() |> SqlKind 

    pub def alter_table(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.ALTER_TABLE: ##org.apache.calcite.sql.SqlKind \ {} as get_ALTER_TABLE;
        get_ALTER_TABLE() |> SqlKind 

    pub def alter_view(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.ALTER_VIEW: ##org.apache.calcite.sql.SqlKind \ {} as get_ALTER_VIEW;
        get_ALTER_VIEW() |> SqlKind 

    pub def andz(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.AND: ##org.apache.calcite.sql.SqlKind \ {} as get_AND;
        get_AND() |> SqlKind 

    pub def any_value(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.ANY_VALUE: ##org.apache.calcite.sql.SqlKind \ {} as get_ANY_VALUE;
        get_ANY_VALUE() |> SqlKind 

    pub def argument_assignment(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.ARGUMENT_ASSIGNMENT: ##org.apache.calcite.sql.SqlKind \ {} as get_ARGUMENT_ASSIGNMENT;
        get_ARGUMENT_ASSIGNMENT() |> SqlKind 

    pub def array_agg(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.ARRAY_AGG: ##org.apache.calcite.sql.SqlKind \ {} as get_ARRAY_AGG;
        get_ARRAY_AGG() |> SqlKind 

    pub def array_concat(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.ARRAY_CONCAT: ##org.apache.calcite.sql.SqlKind \ {} as get_ARRAY_CONCAT;
        get_ARRAY_CONCAT() |> SqlKind 

    pub def array_concat_agg(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.ARRAY_CONCAT_AGG: ##org.apache.calcite.sql.SqlKind \ {} as get_ARRAY_CONCAT_AGG;
        get_ARRAY_CONCAT_AGG() |> SqlKind 

    pub def array_query_constructor(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.ARRAY_QUERY_CONSTRUCTOR: ##org.apache.calcite.sql.SqlKind \ {} as get_ARRAY_QUERY_CONSTRUCTOR;
        get_ARRAY_QUERY_CONSTRUCTOR() |> SqlKind 

    pub def array_reverse(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.ARRAY_REVERSE: ##org.apache.calcite.sql.SqlKind \ {} as get_ARRAY_REVERSE;
        get_ARRAY_REVERSE() |> SqlKind 

    pub def array_value_constructor(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.ARRAY_VALUE_CONSTRUCTOR: ##org.apache.calcite.sql.SqlKind \ {} as get_ARRAY_VALUE_CONSTRUCTOR;
        get_ARRAY_VALUE_CONSTRUCTOR() |> SqlKind 

    pub def asz(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.AS: ##org.apache.calcite.sql.SqlKind \ {} as get_AS;
        get_AS() |> SqlKind 

    pub def attribute_def(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.ATTRIBUTE_DEF: ##org.apache.calcite.sql.SqlKind \ {} as get_ATTRIBUTE_DEF;
        get_ATTRIBUTE_DEF() |> SqlKind 

    pub def avg(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.AVG: ##org.apache.calcite.sql.SqlKind \ {} as get_AVG;
        get_AVG() |> SqlKind 

    pub def between(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.BETWEEN: ##org.apache.calcite.sql.SqlKind \ {} as get_BETWEEN;
        get_BETWEEN() |> SqlKind 

    pub def bit_and(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.BIT_AND: ##org.apache.calcite.sql.SqlKind \ {} as get_BIT_AND;
        get_BIT_AND() |> SqlKind 

    pub def bit_or(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.BIT_OR: ##org.apache.calcite.sql.SqlKind \ {} as get_BIT_OR;
        get_BIT_OR() |> SqlKind 

    pub def bit_xor(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.BIT_XOR: ##org.apache.calcite.sql.SqlKind \ {} as get_BIT_XOR;
        get_BIT_XOR() |> SqlKind 

    pub def casez(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.CASE: ##org.apache.calcite.sql.SqlKind \ {} as get_CASE;
        get_CASE() |> SqlKind 

    pub def castz(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.CAST: ##org.apache.calcite.sql.SqlKind \ {} as get_CAST;
        get_CAST() |> SqlKind 

    pub def ceil(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.CEIL: ##org.apache.calcite.sql.SqlKind \ {} as get_CEIL;
        get_CEIL() |> SqlKind 

    pub def check(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.CHECK: ##org.apache.calcite.sql.SqlKind \ {} as get_CHECK;
        get_CHECK() |> SqlKind 

    pub def classifier(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.CLASSIFIER: ##org.apache.calcite.sql.SqlKind \ {} as get_CLASSIFIER;
        get_CLASSIFIER() |> SqlKind 

    pub def coalesce(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.COALESCE: ##org.apache.calcite.sql.SqlKind \ {} as get_COALESCE;
        get_COALESCE() |> SqlKind 

    pub def collect(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.COLLECT: ##org.apache.calcite.sql.SqlKind \ {} as get_COLLECT;
        get_COLLECT() |> SqlKind 

    pub def collection_table(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.COLLECTION_TABLE: ##org.apache.calcite.sql.SqlKind \ {} as get_COLLECTION_TABLE;
        get_COLLECTION_TABLE() |> SqlKind 

    pub def column_decl(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.COLUMN_DECL: ##org.apache.calcite.sql.SqlKind \ {} as get_COLUMN_DECL;
        get_COLUMN_DECL() |> SqlKind 

    pub def column_list(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.COLUMN_LIST: ##org.apache.calcite.sql.SqlKind \ {} as get_COLUMN_LIST;
        get_COLUMN_LIST() |> SqlKind 

    pub def commit(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.COMMIT: ##org.apache.calcite.sql.SqlKind \ {} as get_COMMIT;
        get_COMMIT() |> SqlKind 

    pub def concat2(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.CONCAT2: ##org.apache.calcite.sql.SqlKind \ {} as get_CONCAT2;
        get_CONCAT2() |> SqlKind 

    pub def contains(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.CONTAINS: ##org.apache.calcite.sql.SqlKind \ {} as get_CONTAINS;
        get_CONTAINS() |> SqlKind 

    pub def correl_variable(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.CORREL_VARIABLE: ##org.apache.calcite.sql.SqlKind \ {} as get_CORREL_VARIABLE;
        get_CORREL_VARIABLE() |> SqlKind 

    pub def count(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.COUNT: ##org.apache.calcite.sql.SqlKind \ {} as get_COUNT;
        get_COUNT() |> SqlKind 

    pub def countif(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.COUNTIF: ##org.apache.calcite.sql.SqlKind \ {} as get_COUNTIF;
        get_COUNTIF() |> SqlKind 

    pub def covar_pop(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.COVAR_POP: ##org.apache.calcite.sql.SqlKind \ {} as get_COVAR_POP;
        get_COVAR_POP() |> SqlKind 

    pub def covar_samp(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.COVAR_SAMP: ##org.apache.calcite.sql.SqlKind \ {} as get_COVAR_SAMP;
        get_COVAR_SAMP() |> SqlKind 

    pub def create_foreign_schema(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.CREATE_FOREIGN_SCHEMA: ##org.apache.calcite.sql.SqlKind \ {} as get_CREATE_FOREIGN_SCHEMA;
        get_CREATE_FOREIGN_SCHEMA() |> SqlKind 

    pub def create_function(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.CREATE_FUNCTION: ##org.apache.calcite.sql.SqlKind \ {} as get_CREATE_FUNCTION;
        get_CREATE_FUNCTION() |> SqlKind 

    pub def create_index(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.CREATE_INDEX: ##org.apache.calcite.sql.SqlKind \ {} as get_CREATE_INDEX;
        get_CREATE_INDEX() |> SqlKind 

    pub def create_materialized_view(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.CREATE_MATERIALIZED_VIEW: ##org.apache.calcite.sql.SqlKind \ {} as get_CREATE_MATERIALIZED_VIEW;
        get_CREATE_MATERIALIZED_VIEW() |> SqlKind 

    pub def create_schema(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.CREATE_SCHEMA: ##org.apache.calcite.sql.SqlKind \ {} as get_CREATE_SCHEMA;
        get_CREATE_SCHEMA() |> SqlKind 

    pub def create_sequence(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.CREATE_SEQUENCE: ##org.apache.calcite.sql.SqlKind \ {} as get_CREATE_SEQUENCE;
        get_CREATE_SEQUENCE() |> SqlKind 

    pub def create_table(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.CREATE_TABLE: ##org.apache.calcite.sql.SqlKind \ {} as get_CREATE_TABLE;
        get_CREATE_TABLE() |> SqlKind

    pub def create_type(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.CREATE_TYPE: ##org.apache.calcite.sql.SqlKind \ {} as get_CREATE_TYPE;
        get_CREATE_TYPE() |> SqlKind

    pub def create_view(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.CREATE_VIEW: ##org.apache.calcite.sql.SqlKind \ {} as get_CREATE_VIEW;
        get_CREATE_VIEW() |> SqlKind
        
    pub def cube(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.CUBE: ##org.apache.calcite.sql.SqlKind \ {} as get_CUBE;
        get_CUBE() |> SqlKind

    pub def cume_dist(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.CUME_DIST: ##org.apache.calcite.sql.SqlKind \ {} as get_CUME_DIST;
        get_CUME_DIST() |> SqlKind

    pub def current_value(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.CURRENT_VALUE: ##org.apache.calcite.sql.SqlKind \ {} as get_CURRENT_VALUE;
        get_CURRENT_VALUE() |> SqlKind

    pub def cursor(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.CURSOR: ##org.apache.calcite.sql.SqlKind \ {} as get_CURSOR;
        get_CURSOR() |> SqlKind

    pub def decode(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.DECODE: ##org.apache.calcite.sql.SqlKind \ {} as get_DECODE;
        get_DECODE() |> SqlKind

    pub def default(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.DEFAULT: ##org.apache.calcite.sql.SqlKind \ {} as get_DEFAULT;
        get_DEFAULT() |> SqlKind

    pub def delete(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.DELETE: ##org.apache.calcite.sql.SqlKind \ {} as get_DELETE;
        get_DELETE() |> SqlKind

    pub def dense_rank(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.DENSE_RANK: ##org.apache.calcite.sql.SqlKind \ {} as get_DENSE_RANK;
        get_DENSE_RANK() |> SqlKind

    pub def descending(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.DESCENDING: ##org.apache.calcite.sql.SqlKind \ {} as get_DESCENDING;
        get_DESCENDING() |> SqlKind

    pub def describe_schema(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.DESCRIBE_SCHEMA: ##org.apache.calcite.sql.SqlKind \ {} as get_DESCRIBE_SCHEMA;
        get_DESCRIBE_SCHEMA() |> SqlKind

    pub def describe_table(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.DESCRIBE_TABLE: ##org.apache.calcite.sql.SqlKind \ {} as get_DESCRIBE_TABLE;
        get_DESCRIBE_TABLE() |> SqlKind

    pub def descriptor(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.DESCRIPTOR: ##org.apache.calcite.sql.SqlKind \ {} as get_DESCRIPTOR;
        get_DESCRIPTOR() |> SqlKind

    pub def divide(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.DIVIDE: ##org.apache.calcite.sql.SqlKind \ {} as get_DIVIDE;
        get_DIVIDE() |> SqlKind

    pub def dot(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.DOT: ##org.apache.calcite.sql.SqlKind \ {} as get_DOT;
        get_DOT() |> SqlKind

    pub def drop_function(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.DROP_FUNCTION: ##org.apache.calcite.sql.SqlKind \ {} as get_DROP_FUNCTION;
        get_DROP_FUNCTION() |> SqlKind

    pub def drop_index(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.DROP_INDEX: ##org.apache.calcite.sql.SqlKind \ {} as get_DROP_INDEX;
        get_DROP_INDEX() |> SqlKind

    pub def drop_materialized_view(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.DROP_MATERIALIZED_VIEW: ##org.apache.calcite.sql.SqlKind \ {} as get_DROP_MATERIALIZED_VIEW;
        get_DROP_MATERIALIZED_VIEW() |> SqlKind

    pub def drop_schema(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.DROP_SCHEMA: ##org.apache.calcite.sql.SqlKind \ {} as get_DROP_SCHEMA;
        get_DROP_SCHEMA() |> SqlKind

    pub def drop_sequence(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.DROP_SEQUENCE: ##org.apache.calcite.sql.SqlKind \ {} as get_DROP_SEQUENCE;
        get_DROP_SEQUENCE() |> SqlKind

    pub def drop_table(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.DROP_TABLE: ##org.apache.calcite.sql.SqlKind \ {} as get_DROP_TABLE;
        get_DROP_TABLE() |> SqlKind

    pub def drop_type(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.DROP_TYPE: ##org.apache.calcite.sql.SqlKind \ {} as get_DROP_TYPE;
        get_DROP_TYPE() |> SqlKind

    pub def drop_view(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.DROP_VIEW: ##org.apache.calcite.sql.SqlKind \ {} as get_DROP_VIEW;
        get_DROP_VIEW() |> SqlKind

    pub def druid_between(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.DRUID_BETWEEN: ##org.apache.calcite.sql.SqlKind \ {} as get_DRUID_BETWEEN;
        get_DRUID_BETWEEN() |> SqlKind

    pub def druid_in(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.DRUID_IN: ##org.apache.calcite.sql.SqlKind \ {} as get_DRUID_IN;
        get_DRUID_IN() |> SqlKind

    pub def druid_not_in(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.DRUID_NOT_IN: ##org.apache.calcite.sql.SqlKind \ {} as get_DRUID_NOT_IN;
        get_DRUID_NOT_IN() |> SqlKind

    pub def dynamic_param(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.DYNAMIC_PARAM: ##org.apache.calcite.sql.SqlKind \ {} as get_DYNAMIC_PARAM;
        get_DYNAMIC_PARAM() |> SqlKind

    pub def equals(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.EQUALS: ##org.apache.calcite.sql.SqlKind \ {} as get_EQUALS;
        get_EQUALS() |> SqlKind

    pub def escape(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.ESCAPE: ##org.apache.calcite.sql.SqlKind \ {} as get_ESCAPE;
        get_ESCAPE() |> SqlKind

    pub def except(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.EXCEPT: ##org.apache.calcite.sql.SqlKind \ {} as get_EXCEPT;
        get_EXCEPT() |> SqlKind

    pub def exists(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.EXISTS: ##org.apache.calcite.sql.SqlKind \ {} as get_EXISTS;
        get_EXISTS() |> SqlKind

    pub def explain(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.EXPLAIN: ##org.apache.calcite.sql.SqlKind \ {} as get_EXPLAIN;
        get_EXPLAIN() |> SqlKind

    pub def explicit_table(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.EXPLICIT_TABLE: ##org.apache.calcite.sql.SqlKind \ {} as get_EXPLICIT_TABLE;
        get_EXPLICIT_TABLE() |> SqlKind

    pub def extend(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.EXTEND: ##org.apache.calcite.sql.SqlKind \ {} as get_EXTEND;
        get_EXTEND() |> SqlKind

    pub def extract(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.EXTRACT: ##org.apache.calcite.sql.SqlKind \ {} as get_EXTRACT;
        get_EXTRACT() |> SqlKind

    pub def field_access(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.FIELD_ACCESS: ##org.apache.calcite.sql.SqlKind \ {} as get_FIELD_ACCESS;
        get_FIELD_ACCESS() |> SqlKind

    pub def filter(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.FILTER: ##org.apache.calcite.sql.SqlKind \ {} as get_FILTER;
        get_FILTER() |> SqlKind

    pub def final(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.FINAL: ##org.apache.calcite.sql.SqlKind \ {} as get_FINAL;
        get_FINAL() |> SqlKind

    pub def first(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.FIRST: ##org.apache.calcite.sql.SqlKind \ {} as get_FIRST;
        get_FIRST() |> SqlKind

    pub def first_value(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.FIRST_VALUE: ##org.apache.calcite.sql.SqlKind \ {} as get_FIRST_VALUE;
        get_FIRST_VALUE() |> SqlKind

    pub def following(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.FOLLOWING: ##org.apache.calcite.sql.SqlKind \ {} as get_FOLLOWING;
        get_FOLLOWING() |> SqlKind

    pub def fusion(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.FUSION: ##org.apache.calcite.sql.SqlKind \ {} as get_FUSION;
        get_FUSION() |> SqlKind

    pub def greater_than(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.GREATER_THAN: ##org.apache.calcite.sql.SqlKind \ {} as get_GREATER_THAN;
        get_GREATER_THAN() |> SqlKind

    pub def greater_than_or_equal(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.GREATER_THAN_OR_EQUAL: ##org.apache.calcite.sql.SqlKind \ {} as get_GREATER_THAN_OR_EQUAL;
        get_GREATER_THAN_OR_EQUAL() |> SqlKind

    pub def greatest(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.GREATEST: ##org.apache.calcite.sql.SqlKind \ {} as get_GREATEST;
        get_GREATEST() |> SqlKind

    pub def group_by_distinct(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.GROUP_BY_DISTINCT: ##org.apache.calcite.sql.SqlKind \ {} as get_GROUP_BY_DISTINCT;
        get_GROUP_BY_DISTINCT() |> SqlKind

    pub def group_concat(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.GROUP_CONCAT: ##org.apache.calcite.sql.SqlKind \ {} as get_GROUP_CONCAT;
        get_GROUP_CONCAT() |> SqlKind

    pub def group_id(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.GROUP_ID: ##org.apache.calcite.sql.SqlKind \ {} as get_GROUP_ID;
        get_GROUP_ID() |> SqlKind

    pub def grouping(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.GROUPING: ##org.apache.calcite.sql.SqlKind \ {} as get_GROUPING;
        get_GROUPING() |> SqlKind

    pub def grouping_id(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.GROUPING_ID: ##org.apache.calcite.sql.SqlKind \ {} as get_GROUPING_ID;
        get_GROUPING_ID() |> SqlKind

    pub def grouping_sets(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.GROUPING_SETS: ##org.apache.calcite.sql.SqlKind \ {} as get_GROUPING_SETS;
        get_GROUPING_SETS() |> SqlKind

    pub def hilbert(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.HILBERT: ##org.apache.calcite.sql.SqlKind \ {} as get_HILBERT;
        get_HILBERT() |> SqlKind

    pub def hint(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.HINT: ##org.apache.calcite.sql.SqlKind \ {} as get_HINT;
        get_HINT() |> SqlKind

    pub def hop(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.HOP: ##org.apache.calcite.sql.SqlKind \ {} as get_HOP;
        get_HOP() |> SqlKind

    pub def hop_end(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.HOP_END: ##org.apache.calcite.sql.SqlKind \ {} as get_HOP_END;
        get_HOP_END() |> SqlKind

    pub def hop_start(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.HOP_START: ##org.apache.calcite.sql.SqlKind \ {} as get_HOP_START;
        get_HOP_START() |> SqlKind

    pub def identifier(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.IDENTIFIER: ##org.apache.calcite.sql.SqlKind \ {} as get_IDENTIFIER;
        get_IDENTIFIER() |> SqlKind

    pub def ifz(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.IF: ##org.apache.calcite.sql.SqlKind \ {} as get_IF;
        get_IF() |> SqlKind

    pub def ignore_nulls(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.IGNORE_NULLS: ##org.apache.calcite.sql.SqlKind \ {} as get_IGNORE_NULLS;
        get_IGNORE_NULLS() |> SqlKind

    pub def immediately_precedes(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.IMMEDIATELY_PRECEDES: ##org.apache.calcite.sql.SqlKind \ {} as get_IMMEDIATELY_PRECEDES;
        get_IMMEDIATELY_PRECEDES() |> SqlKind

    pub def immediately_succeeds(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.IMMEDIATELY_SUCCEEDS: ##org.apache.calcite.sql.SqlKind \ {} as get_IMMEDIATELY_SUCCEEDS;
        get_IMMEDIATELY_SUCCEEDS() |> SqlKind

    pub def in(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.IN: ##org.apache.calcite.sql.SqlKind \ {} as get_IN;
        get_IN() |> SqlKind

    pub def input_ref(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.INPUT_REF: ##org.apache.calcite.sql.SqlKind \ {} as get_INPUT_REF;
        get_INPUT_REF() |> SqlKind

    pub def insert(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.INSERT: ##org.apache.calcite.sql.SqlKind \ {} as get_INSERT;
        get_INSERT() |> SqlKind

    pub def intersect(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.INTERSECT: ##org.apache.calcite.sql.SqlKind \ {} as get_INTERSECT;
        get_INTERSECT() |> SqlKind

    pub def intersection(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.INTERSECTION: ##org.apache.calcite.sql.SqlKind \ {} as get_INTERSECTION;
        get_INTERSECTION() |> SqlKind

    pub def interval(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.INTERVAL: ##org.apache.calcite.sql.SqlKind \ {} as get_INTERVAL;
        get_INTERVAL() |> SqlKind

    pub def interval_qualifier(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.INTERVAL_QUALIFIER: ##org.apache.calcite.sql.SqlKind \ {} as get_INTERVAL_QUALIFIER;
        get_INTERVAL_QUALIFIER() |> SqlKind

    pub def is_distinct_from(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.IS_DISTINCT_FROM: ##org.apache.calcite.sql.SqlKind \ {} as get_IS_DISTINCT_FROM;
        get_IS_DISTINCT_FROM() |> SqlKind

    pub def is_false(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.IS_FALSE: ##org.apache.calcite.sql.SqlKind \ {} as get_IS_FALSE;
        get_IS_FALSE() |> SqlKind

    pub def is_not_distinct_from(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.IS_NOT_DISTINCT_FROM: ##org.apache.calcite.sql.SqlKind \ {} as get_IS_NOT_DISTINCT_FROM;
        get_IS_NOT_DISTINCT_FROM() |> SqlKind

    pub def is_not_false(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.IS_NOT_FALSE: ##org.apache.calcite.sql.SqlKind \ {} as get_IS_NOT_FALSE;
        get_IS_NOT_FALSE() |> SqlKind

    pub def is_not_null(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.IS_NOT_NULL: ##org.apache.calcite.sql.SqlKind \ {} as get_IS_NOT_NULL;
        get_IS_NOT_NULL() |> SqlKind

    pub def is_not_true(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.IS_NOT_TRUE: ##org.apache.calcite.sql.SqlKind \ {} as get_IS_NOT_TRUE;
        get_IS_NOT_TRUE() |> SqlKind

    pub def is_null(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.IS_NULL: ##org.apache.calcite.sql.SqlKind \ {} as get_IS_NULL;
        get_IS_NULL() |> SqlKind

    pub def is_true(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.IS_TRUE: ##org.apache.calcite.sql.SqlKind \ {} as get_IS_TRUE;
        get_IS_TRUE() |> SqlKind

    pub def is_unknown(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.IS_UNKNOWN: ##org.apache.calcite.sql.SqlKind \ {} as get_IS_UNKNOWN;
        get_IS_UNKNOWN() |> SqlKind

    pub def item(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.ITEM: ##org.apache.calcite.sql.SqlKind \ {} as get_ITEM;
        get_ITEM() |> SqlKind

    pub def jdbc_fn(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.JDBC_FN: ##org.apache.calcite.sql.SqlKind \ {} as get_JDBC_FN;
        get_JDBC_FN() |> SqlKind

    pub def join(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.JOIN: ##org.apache.calcite.sql.SqlKind \ {} as get_JOIN;
        get_JOIN() |> SqlKind

    pub def json_arrayagg(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.JSON_ARRAYAGG: ##org.apache.calcite.sql.SqlKind \ {} as get_JSON_ARRAYAGG;
        get_JSON_ARRAYAGG() |> SqlKind

    pub def json_objectagg(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.JSON_OBJECTAGG: ##org.apache.calcite.sql.SqlKind \ {} as get_JSON_OBJECTAGG;
        get_JSON_OBJECTAGG() |> SqlKind

    pub def json_type(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.JSON_TYPE: ##org.apache.calcite.sql.SqlKind \ {} as get_JSON_TYPE;
        get_JSON_TYPE() |> SqlKind

    pub def json_value_expression(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.JSON_VALUE_EXPRESSION: ##org.apache.calcite.sql.SqlKind \ {} as get_JSON_VALUE_EXPRESSION;
        get_JSON_VALUE_EXPRESSION() |> SqlKind

    pub def lag(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.LAG: ##org.apache.calcite.sql.SqlKind \ {} as get_LAG;
        get_LAG() |> SqlKind

    pub def last(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.LAST: ##org.apache.calcite.sql.SqlKind \ {} as get_LAST;
        get_LAST() |> SqlKind

    pub def last_value(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.LAST_VALUE: ##org.apache.calcite.sql.SqlKind \ {} as get_LAST_VALUE;
        get_LAST_VALUE() |> SqlKind

    pub def lateral(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.LATERAL: ##org.apache.calcite.sql.SqlKind \ {} as get_LATERAL;
        get_LATERAL() |> SqlKind

    pub def lead(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.LEAD: ##org.apache.calcite.sql.SqlKind \ {} as get_LEAD;
        get_LEAD() |> SqlKind

    pub def least(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.LEAST: ##org.apache.calcite.sql.SqlKind \ {} as get_LEAST;
        get_LEAST() |> SqlKind

    pub def less_than(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.LESS_THAN: ##org.apache.calcite.sql.SqlKind \ {} as get_LESS_THAN;
        get_LESS_THAN() |> SqlKind

    pub def less_than_or_equal(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.LESS_THAN_OR_EQUAL: ##org.apache.calcite.sql.SqlKind \ {} as get_LESS_THAN_OR_EQUAL;
        get_LESS_THAN_OR_EQUAL() |> SqlKind

    pub def like(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.LIKE: ##org.apache.calcite.sql.SqlKind \ {} as get_LIKE;
        get_LIKE() |> SqlKind

    pub def listagg(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.LISTAGG: ##org.apache.calcite.sql.SqlKind \ {} as get_LISTAGG;
        get_LISTAGG() |> SqlKind

    pub def literal(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.LITERAL: ##org.apache.calcite.sql.SqlKind \ {} as get_LITERAL;
        get_LITERAL() |> SqlKind

    pub def literal_chain(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.LITERAL_CHAIN: ##org.apache.calcite.sql.SqlKind \ {} as get_LITERAL_CHAIN;
        get_LITERAL_CHAIN() |> SqlKind

    pub def local_ref(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.LOCAL_REF: ##org.apache.calcite.sql.SqlKind \ {} as get_LOCAL_REF;
        get_LOCAL_REF() |> SqlKind

    pub def ltrim(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.LTRIM: ##org.apache.calcite.sql.SqlKind \ {} as get_LTRIM;
        get_LTRIM() |> SqlKind

    pub def map_query_constructor(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.MAP_QUERY_CONSTRUCTOR: ##org.apache.calcite.sql.SqlKind \ {} as get_MAP_QUERY_CONSTRUCTOR;
        get_MAP_QUERY_CONSTRUCTOR() |> SqlKind

    pub def map_value_constructor(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.MAP_VALUE_CONSTRUCTOR: ##org.apache.calcite.sql.SqlKind \ {} as get_MAP_VALUE_CONSTRUCTOR;
        get_MAP_VALUE_CONSTRUCTOR() |> SqlKind

    pub def match_number(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.MATCH_NUMBER: ##org.apache.calcite.sql.SqlKind \ {} as get_MATCH_NUMBER;
        get_MATCH_NUMBER() |> SqlKind

    pub def match_recognize(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.MATCH_RECOGNIZE: ##org.apache.calcite.sql.SqlKind \ {} as get_MATCH_RECOGNIZE;
        get_MATCH_RECOGNIZE() |> SqlKind

    pub def max(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.MAX: ##org.apache.calcite.sql.SqlKind \ {} as get_MAX;
        get_MAX() |> SqlKind

    pub def merge(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.MERGE: ##org.apache.calcite.sql.SqlKind \ {} as get_MERGE;
        get_MERGE() |> SqlKind

    pub def min(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.MIN: ##org.apache.calcite.sql.SqlKind \ {} as get_MIN;
        get_MIN() |> SqlKind

    pub def minus(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.MINUS: ##org.apache.calcite.sql.SqlKind \ {} as get_MINUS;
        get_MINUS() |> SqlKind

    pub def minus_prefix(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.MINUS_PREFIX: ##org.apache.calcite.sql.SqlKind \ {} as get_MINUS_PREFIX;
        get_MINUS_PREFIX() |> SqlKind

    pub def mod(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.MOD: ##org.apache.calcite.sql.SqlKind \ {} as get_MOD;
        get_MOD() |> SqlKind

    pub def mode(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.MODE: ##org.apache.calcite.sql.SqlKind \ {} as get_MODE;
        get_MODE() |> SqlKind

    pub def multiset_query_constructor(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.MULTISET_QUERY_CONSTRUCTOR: ##org.apache.calcite.sql.SqlKind \ {} as get_MULTISET_QUERY_CONSTRUCTOR;
        get_MULTISET_QUERY_CONSTRUCTOR() |> SqlKind

    pub def multiset_value_constructor(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.MULTISET_VALUE_CONSTRUCTOR: ##org.apache.calcite.sql.SqlKind \ {} as get_MULTISET_VALUE_CONSTRUCTOR;
        get_MULTISET_VALUE_CONSTRUCTOR() |> SqlKind

    pub def new_specification(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.NEW_SPECIFICATION: ##org.apache.calcite.sql.SqlKind \ {} as get_NEW_SPECIFICATION;
        get_NEW_SPECIFICATION() |> SqlKind

    pub def next(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.NEXT: ##org.apache.calcite.sql.SqlKind \ {} as get_NEXT;
        get_NEXT() |> SqlKind

    pub def next_value(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.NEXT_VALUE: ##org.apache.calcite.sql.SqlKind \ {} as get_NEXT_VALUE;
        get_NEXT_VALUE() |> SqlKind

    pub def not(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.NOT: ##org.apache.calcite.sql.SqlKind \ {} as get_NOT;
        get_NOT() |> SqlKind

    pub def not_equals(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.NOT_EQUALS: ##org.apache.calcite.sql.SqlKind \ {} as get_NOT_EQUALS;
        get_NOT_EQUALS() |> SqlKind

    pub def not_in(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.NOT_IN: ##org.apache.calcite.sql.SqlKind \ {} as get_NOT_IN;
        get_NOT_IN() |> SqlKind

    pub def nth_value(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.NTH_VALUE: ##org.apache.calcite.sql.SqlKind \ {} as get_NTH_VALUE;
        get_NTH_VALUE() |> SqlKind

    pub def ntile(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.NTILE: ##org.apache.calcite.sql.SqlKind \ {} as get_NTILE;
        get_NTILE() |> SqlKind

    pub def nullif(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.NULLIF: ##org.apache.calcite.sql.SqlKind \ {} as get_NULLIF;
        get_NULLIF() |> SqlKind

    pub def nulls_first(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.NULLS_FIRST: ##org.apache.calcite.sql.SqlKind \ {} as get_NULLS_FIRST;
        get_NULLS_FIRST() |> SqlKind

    pub def nulls_last(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.NULLS_LAST: ##org.apache.calcite.sql.SqlKind \ {} as get_NULLS_LAST;
        get_NULLS_LAST() |> SqlKind

    pub def nvl(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.NVL: ##org.apache.calcite.sql.SqlKind \ {} as get_NVL;
        get_NVL() |> SqlKind

    pub def or(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.OR: ##org.apache.calcite.sql.SqlKind \ {} as get_OR;
        get_OR() |> SqlKind

    pub def order_by(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.ORDER_BY: ##org.apache.calcite.sql.SqlKind \ {} as get_ORDER_BY;
        get_ORDER_BY() |> SqlKind

    pub def other(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.OTHER: ##org.apache.calcite.sql.SqlKind \ {} as get_OTHER;
        get_OTHER() |> SqlKind

    pub def other_ddl(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.OTHER_DDL: ##org.apache.calcite.sql.SqlKind \ {} as get_OTHER_DDL;
        get_OTHER_DDL() |> SqlKind

    pub def other_function(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.OTHER_FUNCTION: ##org.apache.calcite.sql.SqlKind \ {} as get_OTHER_FUNCTION;
        get_OTHER_FUNCTION() |> SqlKind

    pub def over(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.OVER: ##org.apache.calcite.sql.SqlKind \ {} as get_OVER;
        get_OVER() |> SqlKind

    pub def overlaps(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.OVERLAPS: ##org.apache.calcite.sql.SqlKind \ {} as get_OVERLAPS;
        get_OVERLAPS() |> SqlKind

    pub def pattern_alter(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.PATTERN_ALTER: ##org.apache.calcite.sql.SqlKind \ {} as get_PATTERN_ALTER;
        get_PATTERN_ALTER() |> SqlKind

    pub def pattern_concat(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.PATTERN_CONCAT: ##org.apache.calcite.sql.SqlKind \ {} as get_PATTERN_CONCAT;
        get_PATTERN_CONCAT() |> SqlKind

    pub def pattern_excluded(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.PATTERN_EXCLUDED: ##org.apache.calcite.sql.SqlKind \ {} as get_PATTERN_EXCLUDED;
        get_PATTERN_EXCLUDED() |> SqlKind

    pub def pattern_input_ref(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.PATTERN_INPUT_REF: ##org.apache.calcite.sql.SqlKind \ {} as get_PATTERN_INPUT_REF;
        get_PATTERN_INPUT_REF() |> SqlKind

    pub def pattern_permute(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.PATTERN_PERMUTE: ##org.apache.calcite.sql.SqlKind \ {} as get_PATTERN_PERMUTE;
        get_PATTERN_PERMUTE() |> SqlKind

    pub def pattern_quantifier(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.PATTERN_QUANTIFIER: ##org.apache.calcite.sql.SqlKind \ {} as get_PATTERN_QUANTIFIER;
        get_PATTERN_QUANTIFIER() |> SqlKind

    pub def percent_rank(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.PERCENT_RANK: ##org.apache.calcite.sql.SqlKind \ {} as get_PERCENT_RANK;
        get_PERCENT_RANK() |> SqlKind

    pub def percentile_cont(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.PERCENTILE_CONT: ##org.apache.calcite.sql.SqlKind \ {} as get_PERCENTILE_CONT;
        get_PERCENTILE_CONT() |> SqlKind

    pub def percentile_disc(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.PERCENTILE_DISC: ##org.apache.calcite.sql.SqlKind \ {} as get_PERCENTILE_DISC;
        get_PERCENTILE_DISC() |> SqlKind

    pub def period_equals(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.PERIOD_EQUALS: ##org.apache.calcite.sql.SqlKind \ {} as get_PERIOD_EQUALS;
        get_PERIOD_EQUALS() |> SqlKind

    pub def pivot(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.PIVOT: ##org.apache.calcite.sql.SqlKind \ {} as get_PIVOT;
        get_PIVOT() |> SqlKind

    pub def plus(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.PLUS: ##org.apache.calcite.sql.SqlKind \ {} as get_PLUS;
        get_PLUS() |> SqlKind

    pub def plus_prefix(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.PLUS_PREFIX: ##org.apache.calcite.sql.SqlKind \ {} as get_PLUS_PREFIX;
        get_PLUS_PREFIX() |> SqlKind

    pub def position(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.POSITION: ##org.apache.calcite.sql.SqlKind \ {} as get_POSITION;
        get_POSITION() |> SqlKind

    pub def posix_regex_case_insensitive(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.POSIX_REGEX_CASE_INSENSITIVE: ##org.apache.calcite.sql.SqlKind \ {} as get_POSIX_REGEX_CASE_INSENSITIVE;
        get_POSIX_REGEX_CASE_INSENSITIVE() |> SqlKind

    pub def posix_regex_case_sensitive(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.POSIX_REGEX_CASE_SENSITIVE: ##org.apache.calcite.sql.SqlKind \ {} as get_POSIX_REGEX_CASE_SENSITIVE;
        get_POSIX_REGEX_CASE_SENSITIVE() |> SqlKind

    pub def precedes(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.PRECEDES: ##org.apache.calcite.sql.SqlKind \ {} as get_PRECEDES;
        get_PRECEDES() |> SqlKind

    pub def preceding(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.PRECEDING: ##org.apache.calcite.sql.SqlKind \ {} as get_PRECEDING;
        get_PRECEDING() |> SqlKind

    pub def prev(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.PREV: ##org.apache.calcite.sql.SqlKind \ {} as get_PREV;
        get_PREV() |> SqlKind

    pub def primary_key(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.PRIMARY_KEY: ##org.apache.calcite.sql.SqlKind \ {} as get_PRIMARY_KEY;
        get_PRIMARY_KEY() |> SqlKind

    pub def procedure_call(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.PROCEDURE_CALL: ##org.apache.calcite.sql.SqlKind \ {} as get_PROCEDURE_CALL;
        get_PROCEDURE_CALL() |> SqlKind

    pub def rank(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.RANK: ##org.apache.calcite.sql.SqlKind \ {} as get_RANK;
        get_RANK() |> SqlKind

    pub def regr_count(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.REGR_COUNT: ##org.apache.calcite.sql.SqlKind \ {} as get_REGR_COUNT;
        get_REGR_COUNT() |> SqlKind

    pub def regr_sxx(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.REGR_SXX: ##org.apache.calcite.sql.SqlKind \ {} as get_REGR_SXX;
        get_REGR_SXX() |> SqlKind

    pub def regr_syy(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.REGR_SYY: ##org.apache.calcite.sql.SqlKind \ {} as get_REGR_SYY;
        get_REGR_SYY() |> SqlKind

    pub def reinterpret(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.REINTERPRET: ##org.apache.calcite.sql.SqlKind \ {} as get_REINTERPRET;
        get_REINTERPRET() |> SqlKind

    pub def respect_nulls(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.RESPECT_NULLS: ##org.apache.calcite.sql.SqlKind \ {} as get_RESPECT_NULLS;
        get_RESPECT_NULLS() |> SqlKind

    pub def reverse(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.REVERSE: ##org.apache.calcite.sql.SqlKind \ {} as get_REVERSE;
        get_REVERSE() |> SqlKind

    pub def rlike(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.RLIKE: ##org.apache.calcite.sql.SqlKind \ {} as get_RLIKE;
        get_RLIKE() |> SqlKind

    pub def rollback(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.ROLLBACK: ##org.apache.calcite.sql.SqlKind \ {} as get_ROLLBACK;
        get_ROLLBACK() |> SqlKind

    pub def rollup(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.ROLLUP: ##org.apache.calcite.sql.SqlKind \ {} as get_ROLLUP;
        get_ROLLUP() |> SqlKind

    pub def row(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.ROW: ##org.apache.calcite.sql.SqlKind \ {} as get_ROW;
        get_ROW() |> SqlKind

    pub def row_number(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.ROW_NUMBER: ##org.apache.calcite.sql.SqlKind \ {} as get_ROW_NUMBER;
        get_ROW_NUMBER() |> SqlKind

    pub def rtrim(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.RTRIM: ##org.apache.calcite.sql.SqlKind \ {} as get_RTRIM;
        get_RTRIM() |> SqlKind

    pub def running(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.RUNNING: ##org.apache.calcite.sql.SqlKind \ {} as get_RUNNING;
        get_RUNNING() |> SqlKind

    pub def scalar_query(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.SCALAR_QUERY: ##org.apache.calcite.sql.SqlKind \ {} as get_SCALAR_QUERY;
        get_SCALAR_QUERY() |> SqlKind

    pub def search(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.SEARCH: ##org.apache.calcite.sql.SqlKind \ {} as get_SEARCH;
        get_SEARCH() |> SqlKind


    pub def selectz(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.SELECT: ##org.apache.calcite.sql.SqlKind \ {} as get_SELECT;
        get_SELECT() |> SqlKind


    pub def separator(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.SEPARATOR: ##org.apache.calcite.sql.SqlKind \ {} as get_SEPARATOR;
        get_SEPARATOR() |> SqlKind

    pub def session(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.SESSION: ##org.apache.calcite.sql.SqlKind \ {} as get_SESSION;
        get_SESSION() |> SqlKind

    pub def session_end(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.SESSION_END: ##org.apache.calcite.sql.SqlKind \ {} as get_SESSION_END;
        get_SESSION_END() |> SqlKind

    pub def session_start(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.SESSION_START: ##org.apache.calcite.sql.SqlKind \ {} as get_SESSION_START;
        get_SESSION_START() |> SqlKind

    pub def set_option(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.SET_OPTION: ##org.apache.calcite.sql.SqlKind \ {} as get_SET_OPTION;
        get_SET_OPTION() |> SqlKind

    pub def set_semantics_table(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.SET_SEMANTICS_TABLE: ##org.apache.calcite.sql.SqlKind \ {} as get_SET_SEMANTICS_TABLE;
        get_SET_SEMANTICS_TABLE() |> SqlKind

    pub def similar(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.SIMILAR: ##org.apache.calcite.sql.SqlKind \ {} as get_SIMILAR;
        get_SIMILAR() |> SqlKind

    pub def single_value(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.SINGLE_VALUE: ##org.apache.calcite.sql.SqlKind \ {} as get_SINGLE_VALUE;
        get_SINGLE_VALUE() |> SqlKind

    pub def skip_to_first(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.SKIP_TO_FIRST: ##org.apache.calcite.sql.SqlKind \ {} as get_SKIP_TO_FIRST;
        get_SKIP_TO_FIRST() |> SqlKind

    pub def skip_to_last(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.SKIP_TO_LAST: ##org.apache.calcite.sql.SqlKind \ {} as get_SKIP_TO_LAST;
        get_SKIP_TO_LAST() |> SqlKind

    pub def snapshot(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.SNAPSHOT: ##org.apache.calcite.sql.SqlKind \ {} as get_SNAPSHOT;
        get_SNAPSHOT() |> SqlKind

    pub def some(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.SOME: ##org.apache.calcite.sql.SqlKind \ {} as get_SOME;
        get_SOME() |> SqlKind

    pub def st_contains(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.ST_CONTAINS: ##org.apache.calcite.sql.SqlKind \ {} as get_ST_CONTAINS;
        get_ST_CONTAINS() |> SqlKind

    pub def st_dwithin(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.ST_DWITHIN: ##org.apache.calcite.sql.SqlKind \ {} as get_ST_DWITHIN;
        get_ST_DWITHIN() |> SqlKind

    pub def st_make_line(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.ST_MAKE_LINE: ##org.apache.calcite.sql.SqlKind \ {} as get_ST_MAKE_LINE;
        get_ST_MAKE_LINE() |> SqlKind

    pub def st_point(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.ST_POINT: ##org.apache.calcite.sql.SqlKind \ {} as get_ST_POINT;
        get_ST_POINT() |> SqlKind

    pub def st_point3(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.ST_POINT3: ##org.apache.calcite.sql.SqlKind \ {} as get_ST_POINT3;
        get_ST_POINT3() |> SqlKind

    pub def stddev_pop(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.STDDEV_POP: ##org.apache.calcite.sql.SqlKind \ {} as get_STDDEV_POP;
        get_STDDEV_POP() |> SqlKind

    pub def stddev_samp(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.STDDEV_SAMP: ##org.apache.calcite.sql.SqlKind \ {} as get_STDDEV_SAMP;
        get_STDDEV_SAMP() |> SqlKind

    pub def string_agg(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.STRING_AGG: ##org.apache.calcite.sql.SqlKind \ {} as get_STRING_AGG;
        get_STRING_AGG() |> SqlKind

    pub def substr_big_query(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.SUBSTR_BIG_QUERY: ##org.apache.calcite.sql.SqlKind \ {} as get_SUBSTR_BIG_QUERY;
        get_SUBSTR_BIG_QUERY() |> SqlKind

    pub def substr_mysql(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.SUBSTR_MYSQL: ##org.apache.calcite.sql.SqlKind \ {} as get_SUBSTR_MYSQL;
        get_SUBSTR_MYSQL() |> SqlKind

    pub def substr_oracle(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.SUBSTR_ORACLE: ##org.apache.calcite.sql.SqlKind \ {} as get_SUBSTR_ORACLE;
        get_SUBSTR_ORACLE() |> SqlKind

    pub def substr_postgresql(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.SUBSTR_POSTGRESQL: ##org.apache.calcite.sql.SqlKind \ {} as get_SUBSTR_POSTGRESQL;
        get_SUBSTR_POSTGRESQL() |> SqlKind

    pub def succeeds(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.SUCCEEDS: ##org.apache.calcite.sql.SqlKind \ {} as get_SUCCEEDS;
        get_SUCCEEDS() |> SqlKind

    pub def sum(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.SUM: ##org.apache.calcite.sql.SqlKind \ {} as get_SUM;
        get_SUM() |> SqlKind

    pub def sum0(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.SUM0: ##org.apache.calcite.sql.SqlKind \ {} as get_SUM0;
        get_SUM0() |> SqlKind

    pub def table_input_ref(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.TABLE_INPUT_REF: ##org.apache.calcite.sql.SqlKind \ {} as get_TABLE_INPUT_REF;
        get_TABLE_INPUT_REF() |> SqlKind

    pub def table_ref(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.TABLE_REF: ##org.apache.calcite.sql.SqlKind \ {} as get_TABLE_REF;
        get_TABLE_REF() |> SqlKind

    pub def tablesample(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.TABLESAMPLE: ##org.apache.calcite.sql.SqlKind \ {} as get_TABLESAMPLE;
        get_TABLESAMPLE() |> SqlKind

    pub def times(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.TIMES: ##org.apache.calcite.sql.SqlKind \ {} as get_TIMES;
        get_TIMES() |> SqlKind

    pub def timestamp_add(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.TIMESTAMP_ADD: ##org.apache.calcite.sql.SqlKind \ {} as get_TIMESTAMP_ADD;
        get_TIMESTAMP_ADD() |> SqlKind

    pub def timestamp_diff(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.TIMESTAMP_DIFF: ##org.apache.calcite.sql.SqlKind \ {} as get_TIMESTAMP_DIFF;
        get_TIMESTAMP_DIFF() |> SqlKind

    pub def trim(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.TRIM: ##org.apache.calcite.sql.SqlKind \ {} as get_TRIM;
        get_TRIM() |> SqlKind

    pub def tumble(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.TUMBLE: ##org.apache.calcite.sql.SqlKind \ {} as get_TUMBLE;
        get_TUMBLE() |> SqlKind

    pub def tumble_end(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.TUMBLE_END: ##org.apache.calcite.sql.SqlKind \ {} as get_TUMBLE_END;
        get_TUMBLE_END() |> SqlKind

    pub def tumble_start(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.TUMBLE_START: ##org.apache.calcite.sql.SqlKind \ {} as get_TUMBLE_START;
        get_TUMBLE_START() |> SqlKind

    pub def union(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.UNION: ##org.apache.calcite.sql.SqlKind \ {} as get_UNION;
        get_UNION() |> SqlKind

    pub def unique(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.UNIQUE: ##org.apache.calcite.sql.SqlKind \ {} as get_UNIQUE;
        get_UNIQUE() |> SqlKind

    pub def unnest(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.UNNEST: ##org.apache.calcite.sql.SqlKind \ {} as get_UNNEST;
        get_UNNEST() |> SqlKind

    pub def unpivot(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.UNPIVOT: ##org.apache.calcite.sql.SqlKind \ {} as get_UNPIVOT;
        get_UNPIVOT() |> SqlKind

    pub def update(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.UPDATE: ##org.apache.calcite.sql.SqlKind \ {} as get_UPDATE;
        get_UPDATE() |> SqlKind

    pub def values(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.VALUES: ##org.apache.calcite.sql.SqlKind \ {} as get_VALUES;
        get_VALUES() |> SqlKind

    pub def var_pop(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.VAR_POP: ##org.apache.calcite.sql.SqlKind \ {} as get_VAR_POP;
        get_VAR_POP() |> SqlKind

    pub def var_samp(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.VAR_SAMP: ##org.apache.calcite.sql.SqlKind \ {} as get_VAR_SAMP;
        get_VAR_SAMP() |> SqlKind

    pub def window(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.WINDOW: ##org.apache.calcite.sql.SqlKind \ {} as get_WINDOW;
        get_WINDOW() |> SqlKind

    pub def withz(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.WITH: ##org.apache.calcite.sql.SqlKind \ {} as get_WITH;
        get_WITH() |> SqlKind

    pub def with_item(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.WITH_ITEM: ##org.apache.calcite.sql.SqlKind \ {} as get_WITH_ITEM;
        get_WITH_ITEM() |> SqlKind

    pub def within_distinct(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.WITHIN_DISTINCT: ##org.apache.calcite.sql.SqlKind \ {} as get_WITHIN_DISTINCT;
        get_WITHIN_DISTINCT() |> SqlKind

    pub def within_group(): SqlKind = 
        import static get org.apache.calcite.sql.SqlKind.WITHIN_GROUP: ##org.apache.calcite.sql.SqlKind \ {} as get_WITHIN_GROUP;
        get_WITHIN_GROUP() |> SqlKind

}
