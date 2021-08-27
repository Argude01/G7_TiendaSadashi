import tkinter as tk
from tkinter import *
import os


ventana = Tk()
ventana.geometry("1050x600+180+40")
ventana.config(bg="#303030")
ventana.title("Sadashi shop")

#Label


def open_window():
    ventana.destroy()
    os.system("pedido.py")


label1= Label(ventana, text="TU BOLSA DE COMPRAS", height=2, width=30, font=("times new roman", 20), bg="#303030", fg="white")
label1.place(x=285,y=25)

#Fila1

titulo= Label(ventana, text="PRENDA", height=4, width=10, font=("times new roman", 15), bg="#303030", fg="white")
titulo.place(x=80,y=85)

label2= Label(ventana, text="", height=4, width=100, font=("times new roman", 5), bg="#FBEEE6", fg="black")
label2.place(x=100,y=150)

label2a= Label(ventana, text="", height=4, width=100, font=("times new roman", 5), bg="#FBEEE6", fg="black")
label2a.place(x=100,y=210)

label2b= Label(ventana, text="", height=4, width=100, font=("times new roman", 5), bg="#FBEEE6", fg="black")
label2b.place(x=100,y=270)

#Fila2

titulo2= Label(ventana, text="CATEGORIA", height=1, width=10, font=("times new roman", 15), bg="#303030", fg="white")
titulo2.place(x=512,y=120)


label3= Label(ventana, text="", height=4, width=50, font=("times new roman", 5), bg="#FBEEE6", fg="black")
label3.place(x=515,y=150)

label3a= Label(ventana, text="", height=4, width=50, font=("times new roman", 5), bg="#FBEEE6", fg="black")
label3a.place(x=515,y=210)

label3b= Label(ventana, text="", height=4, width=50, font=("times new roman", 5), bg="#FBEEE6", fg="black")
label3b.place(x=515,y=270)

#Fila3

titulo3= Label(ventana, text="PRECIO", height=1, width=10, font=("times new roman", 15), bg="#303030", fg="white")
titulo3.place(x=708,y=120)

label4= Label(ventana, text="", height=4, width=50, font=("times new roman", 5), bg="#FBEEE6", fg="black")
label4.place(x=730,y=150)

label4a= Label(ventana, text="", height=4, width=50, font=("times new roman", 5), bg="#FBEEE6", fg="black")
label4a.place(x=730,y=210)

label4b= Label(ventana, text="", height=4, width=50, font=("times new roman", 5), bg="#FBEEE6", fg="black")
label4b.place(x=730,y=270)

#Parte baja

Subtotal= Label(ventana, text="SUBTOTAL", height=2, width=20, font=("times new roman", 15), bg="#303030", fg="White")
Subtotal.place(x=35,y=325)

labelsub= Label(ventana, text="", height=4, width=66, font=("times new roman", 5), bg="#FBEEE6", fg="black")
labelsub.place(x=235,y=325)

Descuento= Label(ventana, text="DESCUENTO", height=2, width=20, font=("times new roman", 15), bg="#303030", fg="White")
Descuento.place(x=42,y=370)

labeldes= Label(ventana, text="", height=4, width=66, font=("times new roman", 5), bg="#FBEEE6", fg="black")
labeldes.place(x=235,y=370)

Total= Label(ventana, text="TOTAL", height=2, width=20, font=("times new roman", 15), bg="#303030", fg="White")
Total.place(x=18,y=410)

labeltotal= Label(ventana, text="", height=4, width=66, font=("times new roman", 5), bg="#FBEEE6", fg="black")
labeltotal.place(x=235,y=415)



#boton

boton = tk.Button(ventana, text="REALIZAR PEDIDO", height=6, width=30, font=("times new roman", 15), bg="#F5CBA7", fg="white")
boton.place(x=550, y=320 )


boton4 = tk.Button(ventana, text="➜", height=1, width=3, font=("times new roman", 13), bg="black",command=open_window, fg="white")
boton4.place(x=950, y=25 )

ventana.mainloop()