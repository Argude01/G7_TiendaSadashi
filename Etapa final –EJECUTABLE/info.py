from tkinter import *
from tkinter import ttk
import tkinter as tk
import os 
from PIL import ImageTk, Image


window=Tk()
window.title("Acerca de")
window.resizable(False,False)
window.geometry("1050x650+200+10")
window.config(bg="#303030")

def open_window():
    window.destroy()
    os.system("registro.py")


imag = ImageTk.PhotoImage(Image.open("pose.jpg"))
my_label = Label(image=imag, bg="#303030")
my_label.place(x=650,y=50)

Label(window, text="Tienda Sadashi ",fg="#E7D6C5",bg="#303030",font=("Broadway", 25)).place(x=175,y=70)

imagen = ImageTk.PhotoImage(Image.open("texto.PNG"))
my_label1 = Label(image=imagen, bg="#303030")
my_label1.place(x=20,y=110)

Label(window, text="Integrantes: ",fg="#E7D6C5",bg="#303030",font=("Arial", 15)).place(x=75,y=400)
Label(window, text="04 Darcy Moreno - Producto ",fg="#E7D6C5",bg="#303030",font=("Arial", 13)).place(x=75,y=430)
Label(window, text="05 Flor Martínez - Pedido ",fg="#E7D6C5",bg="#303030",font=("Arial", 13)).place(x=75,y=453)
Label(window, text="19 Pamela Girón - Registro",fg="#E7D6C5",bg="#303030",font=("Arial", 13)).place(x=75,y=475)  
Label(window, text="07 Heidy Alcerro - Carrito",fg="#E7D6C5",bg="#303030",font=("Arial", 13)).place(x=75,y=497)  
Label(window, text="38 Gabriel German - Categoria",fg="#E7D6C5",bg="#303030",font=("Arial", 13)).place(x=75,y=519) 
Label(window, text="12 BTP A",fg="#303030",bg="#F6D1AB",width="13",font=("Britannic Bold", 14)).place(x=875,y=588)    

boton4 = tk.Button(window, text="➜", height=1, width=3, font=("times new roman", 13),command=open_window, bg="black", fg="white")
boton4.place(x=980, y=15 )
                        
window.mainloop()
