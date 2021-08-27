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


    def insert_db(self, telefono, respuesta_pago, respuesta_direccion, cliente, producto):
        my_connection = self.open_connection()
        cursor = my_connection.cursor()
        query = "INSERT INTO tbl_pedido(TELEFONO, FORMA_DE_PAGO, DIRECCION, ID_CLIENTE, ID_PRODUCTO) VALUES (%s,%s,%s, %s, %s)"
        data = (telefono, respuesta_pago, respuesta_direccion, cliente, producto)
        cursor.execute(query, data)
        my_connection.commit()
        my_connection.close()

