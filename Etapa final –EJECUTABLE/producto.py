from tkinter import *
from tkinter import ttk
import tkinter as tk
from tkinter import messagebox
from PIL import ImageTk, Image
import database_producto
import os


window=Tk()
window.title(" Productos disponibles")
window.resizable(False,False)
window.geometry("1050x650+200+10")
window.config(bg="#262521")


def open_window():
    window.destroy()
    os.system("carrito.py")


producto = StringVar()
talla = StringVar()
id_categoria = StringVar()

def crear_registro():
    producto = prenda.get()
    talla = size.get()
    id_categoria= categoria.get()

    if prenda.get() == "" : 
        messagebox.showerror("¡Te equivocaste!", "Ingresa un producto")
    elif size.get() == "":
        messagebox.showerror("¡Te equivocaste!", "Ingresa la talla del producto")
    elif categoria.get() == "":
        messagebox.showerror("¡Te equivocaste!", "Ingresa la categoria del producto")

    demo_db = database_producto.MyDatabase()
    demo_db.insert_db(producto, talla, id_categoria)
    
imag = ImageTk.PhotoImage(Image.open("modelos.jpg"))
my_label = Label(image=imag, bg="#262521")
my_label.place(x=-2,y=-180)

imagen = ImageTk.PhotoImage(Image.open("cuadro.jpg"))
my_label = Label(image=imagen, bg="#262521")
my_label.place(x=-210,y=320)




Label(window, text="Productos Disponibles ",fg="#E7D6C5",bg="#8D97A0",font=("Broadway", 25)).place(x=8,y=20)
      
Label(window, text="Eliga una prenda y la talla en la que la desea",fg="#E7D6C5",bg="#262521",font=("Bahnschrift Condensed", 25)).place(x=100,y=320)

p= tk.StringVar()
prenda = ttk.Combobox(window,height=37, width = 37,textvariable = p,font=("Bahnschrift Condensed", 11))
prenda["values"] = ("Pantalón acampanado","Falda con estampado","Blusa con escote", "Vestido acampanado", "Mom jeans", "Crop top")
prenda.place(x=180,y=380, height="35")
current_value = prenda.current()

t= tk.StringVar()
size = ttk.Combobox(window, width = 17, textvariable = t,font=("Bahnschrift Condensed", 11))
size["values"] = ("XS","S","M","L","XL")
size.place(x=473,y=380, height="35")
current_value = size.current()

Label(window, text="Ingrese una categoria ",fg="#E7D6C5",bg="#303030",font=("Bahnschrift Condensed", 20)).place(x=725,y=330)
categoria = ttk.Combobox(window, width = 14,font=("Bahnschrift Condensed", 11))
categoria["values"] = ("1-Niño","2-Adulto","3-Adulto mayor")
categoria.place(x=773,y=380, height="30")
current_value = categoria.current()

def analisis():
    ta=size.get()
    if prenda.get() == "" : 
        messagebox.showerror("¡Te equivocaste!", "Ingresa un producto")
    elif size.get() == "":
        messagebox.showerror("¡Te equivocaste!", "Ingresa la talla del producto")
    elif categoria.get() == "":
        messagebox.showerror("¡Te equivocaste!", "Ingresa la categoria del producto")
    elif prenda.get() == "Pantalón acampanado":
        label1 = Label(window, text="           Su prenda es un Pantalón acampanado    ", fg="#EFC6EA",width="45",bg="#262521",font=("Bahnschrift Condensed", 18)).place(x=200,y=475)
        label2 = Label(window, text="La talla que selecciono es "+str (ta),bg="#262521", width="45", fg="#EFC6EA" ,font=("Bahnschrift Condensed", 18)).place(x=205,y=505)
        label3 = Label(window, text="  El precio de la prenda es 700",bg="#262521", width="45", fg="#EFC6EA", font=("Bahnschrift Condensed", 18)).place(x=200,y=535)

    elif prenda.get() == "Falda con estampado":
        label1 = Label(window, text="           Su prenda es una Falda con estampado   ", fg="#EFC6EA", width="45",bg="#262521",font=("Bahnschrift Condensed", 18)).place(x=200,y=475)
        label2 = Label(window, text="La talla que selecciono es "+str (ta),bg="#262521", fg="#EFC6EA", width="45", font=("Bahnschrift Condensed", 18)).place(x=205,y=505)
        label3 = Label(window, text="  El precio de la prenda es 550",bg="#262521", fg="#EFC6EA", width="45", font=("Bahnschrift Condensed", 18)).place(x=200,y=535)
    elif prenda.get() == "Blusa con escote":
        label1 = Label(window, text="           Su prenda es una Blusa con escote   ", fg="#EFC6EA", width="45",bg="#262521",font=("Bahnschrift Condensed", 18)).place(x=185,y=475)
        label2 = Label(window, text="La talla que selecciono es "+str (ta), width="45", fg="#EFC6EA",bg="#262521", font=("Bahnschrift Condensed", 18)).place(x=205,y=505)
        label3 = Label(window, text="  El precio de la prenda es 350", width="45", fg="#EFC6EA",bg="#262521", font=("Bahnschrift Condensed", 18)).place(x=200,y=535)   
    elif prenda.get() == "Vestido acampanado":
        label1 = Label(window, text="     Su prenda es un Vestido acampanado   ", fg="#EFC6EA", width="45",bg="#262521",font=("Bahnschrift Condensed", 18)).place(x=205,y=475)
        label2 = Label(window, text="la talla que selecciono es "+str (ta), fg="#EFC6EA", width="45",bg="#262521", font=("Bahnschrift Condensed", 18)).place(x=205,y=505)
        label3 = Label(window, text="  El precio de la prenda es 400", fg="#EFC6EA", width="45",bg="#262521", font=("Bahnschrift Condensed", 18)).place(x=200,y=535)    
    elif prenda.get() == "Mom jeans":
        label1 = Label(window, text="         Su prenda es un Mom jeans  ", fg="#EFC6EA", width="45",bg="#262521",font=("Bahnschrift Condensed", 18)).place(x=185,y=475)
        label2 = Label(window, text="La talla que selecciono es "+str (ta), fg="#EFC6EA", width="45",bg="#262521", font=("Bahnschrift Condensed", 18)).place(x=207,y=505)
        label3 = Label(window, text="  El precio de la prenda es 600", fg="#EFC6EA", width="45",bg="#262521", font=("Bahnschrift Condensed", 18)).place(x=205,y=535)    
    elif prenda.get() == "Crop top":
        label1 = Label(window, text="          Su prenda es un Crop top ", fg="#EFC6EA", width="45",bg="#262521",font=("Bahnschrift Condensed", 18)).place(x=170,y=475)
        label2 = Label(window, text="La talla que selecciono es "+str (ta), fg="#EFC6EA", width="45",bg="#262521", font=("Bahnschrift Condensed", 18)).place(x=207,y=505)
        label3 = Label(window, text="  El precio de la prenda es 200", fg="#EFC6EA", width="45",bg="#262521", font=("Bahnschrift Condensed", 18)).place(x=205,y=535)  

boton = tk.Button(window, text="Ver prenda",font=("Broadway", 10), command=analisis,width=15,height=2)
boton.place(x=755,y=470)
boton = tk.Button(window, text="Aceptar",font=("Broadway", 10), command=crear_registro,width=15,height=2)
boton.place(x=755,y=520)

boton4 = tk.Button(window, text="➜", height=1, width=3, font=("times new roman", 13), bg="black",command=open_window, fg="white")
boton4.place(x=970, y=25 )

window.mainloop()
