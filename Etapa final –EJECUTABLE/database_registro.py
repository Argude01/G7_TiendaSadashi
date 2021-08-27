import mysql.connector


class MyDatabase:
    
    def open_connection(self):
      
        connection = mysql.connector.connect( 
            host="localhost",                    
            user="root", 
            passwd="", 
            database="db_tienda_sadashi")
        
        return connection

    
    def insert_db(self, correo, clave, nombre):
       
        my_connection = self.open_connection()
        
        cursor = my_connection.cursor()
        
        query = "INSERT INTO tbl_cliente(CORREO_ELECTRONICO, CLAVE, NOMBRE) VALUES (%s,%s,%s)"
        
        data = (correo, clave, nombre)
        
        cursor.execute(query, data)
        
        my_connection.commit()
        
        my_connection.close()


