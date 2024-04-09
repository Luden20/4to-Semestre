# Librerias utilizadas
from tkinter import *
from tkinter import filedialog
from tkinter import ttk
import pandas as pd
import os

# Interfaz
# Creamos la ventana de la interfaz
ventana_principal = Tk()
ventana_principal.title("Generador de archivos")
ventana_principal.minsize(width=600, height=400)  # Ajustado para no ser tan grande
ventana_principal.config(padx=15, pady=15)


# Creamos el mensaje de la interfaz para el ingreso de la ubicación del archivo
etiqueta1 = Label(text="Ingrese la ubicación del archivo")
etiqueta1.grid(column=0, row=0, pady=(10, 2))

# Creamos una variable de control para almacenar la ubicación del archivo
ubicacion_archivo = StringVar()
ubicacion_carpeta_principal = StringVar(value=os.getcwd())
def abrirArchivo():
    archivo = filedialog.askopenfilename(title="Abrir")
    ubicacion_archivo.set(archivo)
# Botón para seleccionar el archivo
boton_ingresar = ttk.Button(ventana_principal, text="Seleccionar Archivo", command=abrirArchivo)
boton_ingresar.grid(column=0, row=1, pady=(2, 10))

# Etiqueta para mostrar la ubicación del archivo seleccionado
etiqueta2 = Label(textvariable=ubicacion_archivo)
etiqueta2.grid(column=0, row=2, pady=(0, 20))
def seleccionarCarpetaPrincipal():
    carpeta = filedialog.askdirectory(title="Seleccionar carpeta principal")
    if carpeta:
        ubicacion_carpeta_principal.set(carpeta)
# Botón para seleccionar carpeta principal
boton_seleccionar_carpeta = ttk.Button(ventana_principal, text="Seleccionar Carpeta Principal", command=seleccionarCarpetaPrincipal)
boton_seleccionar_carpeta.grid(column=0, row=3, pady=(2, 10))
# Etiqueta para mostrar la ubicación de la carpeta principal seleccionada
etiqueta_carpeta = Label(textvariable=ubicacion_carpeta_principal)
etiqueta_carpeta.grid(column=0, row=4, pady=(0, 20))

etiqueta3 = Label(text="Ingrese el número de seguimiento (1 - 4)")
etiqueta3.grid(column=0, row=5, pady=(0, 2))
def validar_entrada(p):
    return p.isdigit() and 1 <= int(p) <= 4 or p == ""
vcmd = (ventana_principal.register(validar_entrada), '%P')
entrada_numerica = Entry(ventana_principal, validate="key", validatecommand=vcmd)
entrada_numerica.grid(column=0, row=6, pady=(2, 20))
# Desarrollo
def ejecucion():
    numero = entrada_numerica.get()
    seguimiento = "0" + numero
    # Corregido para usar el archivo seleccionado por el usuario
    df_revision = pd.read_excel(ubicacion_archivo.get(), sheet_name=F"Revision{seguimiento}")
    # renombro las columnas
    df_revision.columns = ['Apellidos', 'Nombres', 'Facultad', 'Carrera', 'NRC', 'Fecha', 'Hora', 'Sílabo','Información', 'Herramientas', 'Organización', 'Recursos', 'Rubricas', 'Evaluación','Calificador']
    df_revision.tail()
    # concateno los nombres y apellidos
    df_revision['Nombre Completo'] = df_revision['Apellidos'] + " " + df_revision['Nombres']
    # genero una lista con los nombres de los docentes sin repetir
    lista_docentes = df_revision['Nombre Completo'].unique()
    # creo una carpeta por cada docente, dentro de la carpeta Seguimiento
    for docente in lista_docentes:
        if not os.path.exists(f'Seguimiento{seguimiento}/' + docente):
            os.makedirs(f'Seguimiento{seguimiento}/' + docente)
    for n in range(df_revision.shape[0]):
        # for n in range(1):
        # Genero un archivo con el nombre
        archivo = open(
            f"Seguimiento{seguimiento}/{df_revision['Nombre Completo'][n]}/{df_revision['NRC'][n]}-Seguimiento{seguimiento}.tex",
            "w", encoding="utf-8")
        # Abro el archivo de formato
        #####
        formato = open(os.path.join(os.path.dirname(os.path.abspath(__file__)), "formato.tex"), "r", encoding="utf-8")
        # Tomo el texto del formato
        texto = formato.read()
        # Reemplazo los datos de la tabla de evaluación
        texto = reemplazar(texto, n,df_revision)
        # Escribo en el nuevo archivo el texto del formato reemplazando los datos
        archivo.write(texto)
        # Cierro los archivos
        archivo.close()
        formato.close()
        # compilo el archivo tex
        dir_carpeta = f"Seguimiento{seguimiento}/{df_revision['Nombre Completo'][n]}"
        dir_archivo = f"Seguimiento{seguimiento}/{df_revision['Nombre Completo'][n]}/{df_revision['NRC'][n]}-Seguimiento{seguimiento}"
        os.system(f'pdflatex -output-directory="{dir_carpeta}" "{dir_archivo}.tex"')
        os.system(f'pdflatex -output-directory="{dir_carpeta}" "{dir_archivo}.tex"')
        # elimino los archivos auxiliares
        if os.path.exists(f"{dir_archivo}.aux"):
            os.remove(f"{dir_archivo}.aux")
        if os.path.exists(f"{dir_archivo}.log"):
            os.remove(f"{dir_archivo}.log")
        # Y así sucesivamente para cada archivo que quieras eliminar.
        os.remove(f"{dir_archivo}.tex")
def reemplazar(texto, n, df_revision):
    # reemplazo la información de la tabla de revision
    # Nombre docente
    texto = texto.replace("<<Docente>>", df_revision['Nombre Completo'][n])
    # NRC
    texto = texto.replace("<<NRC>>", str(df_revision['NRC'][n]))
    # Facultad
    texto = texto.replace("<<Facultad>>", df_revision['Facultad'][n])
    # Carrera
    texto = texto.replace("<<Carrera>>", df_revision['Carrera'][n])
    # Sílabo
    texto = texto.replace("<<Sílabo>>", df_revision['Sílabo'][n])
    # Información
    texto = texto.replace("<<Información>>", df_revision['Información'][n])
    # Herramientas
    texto = texto.replace("<<Herramientas>>", df_revision['Herramientas'][n])
    # Organización
    texto = texto.replace("<<Organización>>", df_revision['Organización'][n])
    # Recursos
    texto = texto.replace("<<Recursos>>", df_revision['Recursos'][n])
    # Rubricas
    texto = texto.replace("<<Rubricas>>", df_revision['Rubricas'][n])
    # Evaluación
    texto = texto.replace("<<Evaluación>>", df_revision['Evaluación'][n])
    # Calificador
    texto = texto.replace("<<Calificador>>", df_revision['Calificador'][n])
    # Fecha
    texto = texto.replace("<<Fecha>>", df_revision['Fecha'][n].strftime("%m/%d/%Y"))
    # Hora
    texto = texto.replace("<<Hora>>", df_revision['Hora'][n])
    return texto
# Creación del botón para generar el archivo
boton_ejecutar = ttk.Button(ventana_principal, text="Generar", command=ejecucion)
boton_ejecutar.grid(column=0, row=7, pady=(2, 10))
ventana_principal.mainloop()