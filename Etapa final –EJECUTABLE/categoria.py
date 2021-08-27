import tkinter as tk
from tkinter import *
import os

#Crear Ventana
ventana = Tk()
ventana.geometry("1300x650+20+20")
ventana.config(bg="#2E4053")
ventana.title("Fadashi Shop")

def open_window():
    ventana.destroy()
    os.system("producto.py")

#Imagenes

imagen1=PhotoImage(file="imagen1.gif")
lblImagen1=Label(ventana, image=imagen1, height=440, width=340)
lblImagen1.place(x=100, y=100)

imagen2=PhotoImage(file="imagen2.gif")
lblImagen2=Label(ventana, image=imagen2, height=440, width=340)
lblImagen2.place(x=480, y=100)

imagen3=PhotoImage(file="imagen3.gif")
lblImagen3=Label(ventana, image=imagen3, height=440, width=340)
lblImagen3.place(x=860, y=100)

#Botones

boton1 = tk.Button(ventana, text="ROPA PARA NIÑOS", height=2, width=25, font=("times new roman", 13), bg="#2E4053", fg="white")
boton1.place(x=100, y=550 )

boton2 = tk.Button(ventana, text="ROPA PARA ADULTOS", height=2, width=25, font=("times new roman", 13), bg="#2E4053", fg="white")
boton2.place(x=480, y=550 )

boton3 = tk.Button(ventana, text="ROPA PARA MAYOR DE EDAD", height=2, width=30, font=("times new roman", 13), bg="#2E4053", fg="white")
boton3.place(x=860, y=550 )

boton4 = tk.Button(ventana, text="➜", height=1, width=3, font=("times new roman", 13), bg="black",command=open_window, fg="white")
boton4.place(x=1230, y=25 )

ventana.mainloop()