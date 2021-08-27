import mysql.connector

data = []

class MyDatabase:
    def open_connection(self):
        connection = mysql.connector.connect( 
            host="localhost",                    
            user="root", 
            passwd="", 
            database="db_tienda_sadashi")
        return connection

    def insert_db(self, producto, talla,id_categoria):
        my_connection = self.open_connection()
        cursor = my_connection.cursor()
        query = "INSERT INTO tbl_productos(PRODUCTO, TALLA, ID_CATEGORIA) VALUES (%s,%s,%s)"
        data = (producto, talla,id_categoria)
        cursor.execute(query, data)
        
        my_connection.commit()
