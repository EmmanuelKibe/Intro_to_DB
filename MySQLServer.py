# MySQLServer.py
import mysql.connector
from mysql.connector import Error

try:
    # Connect to MySQL server (modify credentials as needed)
    connection = mysql.connector.connect(
        host='localhost',
        user='Emmanuel',
        password='Mancity123'
    )

    if connection.is_connected():
        cursor = connection.cursor()
        cursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")
        print("Database 'alx_book_store' created successfully!")

except Error as e:
    print(mysql.connector.Error)

finally:
    if connection.is_connected():
        cursor.close()
        connection.close()
        print("MySQL connection is closed.")


