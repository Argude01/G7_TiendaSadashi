from tkinter import *
from tkinter import ttk
import database_registro
import tkinter as tk
import os
import mysql.connector


def insertar_usuario():
    # Obteniendo los valores de los widgets Entry mediante la función "GET()" 
    # y almacenandolos en las variables previamente inicializadas
    CORREO = entry_correo.get()
    CLAVE = entry_clave.get()
    NOMBRE = entry_nombre.get()
  
    # creando un objeto de la Base de datos "MyDatabase", para acceder a la función "insert_db"
    tienda_sadashi_db = database_registro.MyDatabase()
    # ejecutando la función "insert_db" y enviando las variables como parámetros
    tienda_sadashi_db.insert_db(CORREO, CLAVE, NOMBRE)
    
    


def open_window():
    window.destroy()
    os.system("menu.py")

    

window = Tk()
window.title(" Registrarse")
window.resizable(False,False)
window.geometry("450x650+450+30")
window.config(bg="#303030")
frame_app = Frame(window, width=450, height=600, bg="red")
frame_app.pack()



frame_navbar = Frame(frame_app, width=450, height=100, bg="#303030")
frame_navbar.grid(row=0, column=0)
frame_title = Frame(frame_app, width=450, height=150, bg="#303030")
frame_title.grid(row=1, column=0)
frame_options = Frame(frame_app, width=450, height=500, bg="#303030")
frame_options.grid(row=2, column=0)



# Widgets dentro del contender NAVBAR


# Widgets dentro del contender TITLE

title1 = Label(frame_title, 
             text="¡Bienvenido(a)!", 
             font=("Calibri", "22", "bold"),
             fg="white",
             bg="#303030",
             justify=LEFT)
title1.place(x=25, y=-10)
lb = Label(text="Regístrate ",font=("Calibri",30, "bold"),fg="white", bg="#303030", width=10).place(x=48,y=200)
title2 = Label(frame_title, 
             text="¿Espero encuentres lo que buscas?", 
             font=("Calibri", "18"),
              fg="white",
             bg="#303030",
             justify=LEFT)
title2.place(x=25, y=28)

# Widgets dentro del contender OPTIONS
frame_form = Frame(frame_options, width=350, height=350, bg="#303030")
frame_form.place(x=25, y=5)
label_correo = Label(frame_form, 
              text="CORREO:",
              font=("Century Gothic", "14", "bold"),
              fg="white",
              bg="#303030")
label_correo.place(x=30, y=30)
entry_correo = Entry(frame_form, justify=LEFT, width=25, 
             font=("Century Gothic", "14"))
entry_correo.place(x=30, y=70)

label_clave = Label(frame_form, 
              text="CLAVE:",
              font=("Century Gothic", "14", "bold"),
              fg="white",
              bg="#303030")
label_clave.place(x=30, y=100)
entry_clave = Entry(frame_form, justify=LEFT, width=25, 
                font=("Century Gothic", "14"))
entry_clave.place(x=30, y=140)

label_nombre = Label(frame_form, 
              text="NOMBRE:",
              font=("Century Gothic", "14", "bold"),
              fg="white",
              bg="#303030")
label_nombre.place(x=30, y=170)
entry_nombre = Entry(frame_form, justify=LEFT, width=25, 
                font=("Century Gothic", "14"))
entry_nombre.place(x=30, y=200)


button_agregar = Button(frame_form, text="Insertar usuario", 
                        font=("Century Gothic", "14", "bold"),
                        command=insertar_usuario)
button_agregar.place(x=110, y=250)


boton4 = tk.Button(window, text="➜", height=1, width=3, font=("times new roman", 13),command=open_window, bg="black", fg="white")
boton4.place(x=370, y=15 )
                        

window.mainloop()