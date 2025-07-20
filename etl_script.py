from sqlalchemy import create_engine, inspect

db_password = '****' 
db_username = 'postgres'
db_host = 'localhost'
db_port = '5433' 
db_name = 'flights_india'

print("--- Database Connection Check ---")
print(f"Attempting to connect to database '{db_name}' on {db_host}:{db_port}...")

try:
    engine = create_engine(f'postgresql+psycopg2://{db_username}:{db_password}@{db_host}:{db_port}/{db_name}')
    inspector = inspect(engine)
    tables = inspector.get_table_names()
    
    print("\n Connection Successful!")
    if tables:
        print("Found the following tables:")
        for table in tables:
            print(f"- {table}")
    else:
        print(" No tables were found in this database.")

except Exception as e:
    print(f"\n Connection Failed. Error: {e}")
