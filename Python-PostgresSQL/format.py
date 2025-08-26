import psycopg2
db= #database name
use= # userID
pas= # Admin password
host = # Host
port= # Post
try:
    connection = psycopg2.connect(database=db, user=use, password=pas, host=host, port=port)
    cur = connection.cursor()
   
    query = f'Select From Where;' # protect from sql injection
   
    cur.execute(query)
    connection.commit()
    cur.close()
except Exception as e:
        # Handle the exception
    print("An error occurred:", e)
finally:
    connection.close()
