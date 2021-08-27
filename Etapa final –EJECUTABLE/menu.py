from tkinter import*
from PIL import ImageTk, Image
from tkinter import ttk
import tkinter as tk
import os

root=Tk()
root.config( bg="#100D0D")
root.geometry("1050x600+200+50")
root.title("Menú Principal")
root.resizable(False, False)

def open_window():
    root.destroy()
    os.system("registro.py")

def open_window1():
    root.destroy()
    os.system("producto.py")

def open_window2():
    root.destroy()
    os.system("pedido.py")

def open_window3():
    root.destroy()
    os.system("categoria.py")

Label(root, text="Menú Principal",fg="white", font=("Century Gothic", 32), bg="#100D0D", width="20", height="1").place( x=-90, y=10)

my_image1 = ImageTk.PhotoImage(Image.open("registrarse.gif"))
my_label = Label(image=my_image1, bg="#100D0D")
my_label.place(x=90,y=190)

my_image2 = ImageTk.PhotoImage(Image.open("prendas.gif"))
my_label = Label(image=my_image2, bg="#100D0D")
my_label.place(x=400,y=190)

my_image3 = ImageTk.PhotoImage(Image.open("pago.gif"))
my_label = Label(image=my_image3, bg="#100D0D")
my_label.place(x=720,y=190)

boton1 = Button(root, text="Registrarse",font=("Century Gothic", 14), fg="white",command=open_window, bg="#424242", width=17, height=1)
boton1.place(x=110, y=380)

boton2 = Button(root, text="Prendas Disponibles",font=("Century Gothic", 14), fg="white",command=open_window1, bg="#424242", width=17, height=1)
boton2.place(x=420, y=380)

boton3 = Button(root, text="Pedido",font=("Century Gothic", 14), fg="white",command=open_window2, bg="#424242", width=17, height=1)
boton3.place(x=740, y=380)

boton4 = tk.Button(root, text="➜", height=1, width=3, font=("times new roman", 13),command=open_window3, bg="black", fg="white")
boton4.place(x=980, y=15 )
root.mainloop()