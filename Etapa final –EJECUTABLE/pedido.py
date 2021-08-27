from tkinter import*
from PIL import ImageTk, Image
from tkinter import ttk
import database
from tkinter import messagebox

root=Tk()
root.config( bg="#24292E")
root.geometry("1100x650+150+30")
root.title("Pedido")
root.resizable(False, False)

telefono = StringVar()
direccion = StringVar()
cliente = StringVar()
producto = StringVar()

def insert_db():     
    telefono = entry_telefono.get()
    respuesta_pago = pago.get()
    respuesta_direccion = direccion.get()
    cliente = entry_cliente.get()
    producto = entry_producto.get()

    if entry_cliente.get() == "" : 
        messagebox.showerror(message="Debes rellenar el campo cliente", title="Error")
    elif entry_producto.get() == "" : 
        messagebox.showerror(message="Debes rellenar el campo producto", title="Error")
    elif entry_telefono.get() == "" : 
        messagebox.showerror(message="Debes ingresar tu numero telefonico", title="Error")
    elif pago.get() == "":
        messagebox.showerror(message="Debes seleccionar la forma de pago", title="Error")
    elif direccion.get() == "":
        messagebox.showerror(message="Debes ingresar tu direccion", title="Error")
    pedido_db = database.MyDatabase()
    pedido_db.insert_db(telefono, respuesta_pago, respuesta_direccion, cliente, producto)

my_image = ImageTk.PhotoImage(Image.open("fondo.gif"))
my_label = Label(image=my_image, bg="#24292E")
my_label.place(x=0,y=0)


frame_datos= Frame(root, bg="#24292E", width="600", height="650", )
frame_datos.pack()


Label(root, text="TIENDA SADASHI",fg="white", font=("Verdana", 12), bg="#24292E", width="20", height="1").place( x=0, y=0)

Label(frame_datos, text="PEDIDO",fg="white", font=("Verdana", 20), bg="#424242", width="35", height="1").place( x=0, y=10)

Label(frame_datos, text="CLIENTE:",fg="white", font=("Verdana", 14), bg="#424242", width="10", height="1").place( x=114, y=100)
entry_cliente=Entry(frame_datos, width=20, font=("Verdana", 14))
entry_cliente.place(x=247, y=100)

Label(frame_datos, text="PRODUCTO:",fg="white", font=("Verdana", 14), bg="#424242", width="10", height="1").place( x=114, y=165)
entry_producto=Entry(frame_datos, width=20, font=("Verdana", 14))
entry_producto.place(x=247, y=165)

Label(frame_datos, text="TELÉFONO:",fg="white", font=("Verdana", 14), bg="#424242", width="10", height="1").place( x=114, y=235)
entry_telefono=Entry(frame_datos, width=20, font=("Verdana", 14))
entry_telefono.place(x=247, y=235)


Label(frame_datos, text="TOTAL A PAGAR:",fg="white", font=("Verdana", 14), bg="#424242", width="14", height="1").place( x=65, y=305)
entry_total=Entry(frame_datos, state="disabled", width=20, font=("Verdana", 14))
entry_total.place(x=247, y=306)

Label(frame_datos, text="FORMA DE PAGO:",fg="white", font=("Verdana", 14), bg="#424242", width="14", height="1").place( x=65, y=380)

pago = ttk.Combobox(frame_datos, width = 37)

pago["values"] = ("Tarjeta de credito","Tarjeta de debito","PayPal", "Transferencia bancaria")
pago.place(x=247, y=380, height=30)

Label(frame_datos, text="DIRECCIÓN:",fg="white", font=("Verdana", 14), bg="#424242", width="14", height="1").place( x=65, y=450)
direccion=Entry(frame_datos, width=20, font=("Verdana", 14))
direccion.place(x=247, y=450, height=100)


boton_aceptar = Button(frame_datos, text="ACEPTAR",font=("Verdana", 14), fg="white", bg="#424242", width=17, height=1, command=insert_db)
boton_aceptar.place(x=200, y=590)

root.mainloop()
