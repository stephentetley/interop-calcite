
use Interop/Apache/Calcite/Sql.SqlNode

def main(): Unit \ IO = 
    println("Running...");
    parseDDL("CREATE TABLE person (name TEXT NOT NULL, age INTEGER, CONSTRAINT PK_person PRIMARY KEY(name, age))") |> println;
    ()


pub def parseDDL(sql: String): SqlNode =
    use Interop/Apache/Calcite/Sql/Parser/SqlParser/Config.{withCaseSensitive, withParserFactory};
    let config1 = Interop/Apache/Calcite/Sql/Parser/SqlParser.config() 
                    |> withCaseSensitive(true)
                    |> withParserFactory(Interop/Apache/Calcite/Sql/Parser/Ddl/SqlDdlParserImpl.factory());
    let parser = Interop/Apache/Calcite/Sql/Parser/SqlParser.createWithConfig(sql, config1);
    let node = Interop/Apache/Calcite/Sql/Parser/SqlParser.parseQuery(parser);
    node
