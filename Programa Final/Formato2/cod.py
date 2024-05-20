from tkinter import *
from tkinter import filedialog, messagebox
from tkinter import ttk
import pandas as pd
import os
import threading

# Función para abrir el archivo de Excel
def abrirArchivo():
    archivo = filedialog.askopenfilename(title="Abrir", filetypes=[("Archivos de Excel", "*.xlsx *.xls")])
    ubicacion_archivo.set(archivo)

# Función para seleccionar la carpeta principal
def seleccionarCarpetaPrincipal():
    carpeta = filedialog.askdirectory(title="Seleccionar carpeta principal")
    if carpeta:
        ubicacion_carpeta_principal.set(carpeta)

# Función para reemplazar texto en el formato
def reemplazar(texto, n, df_revision):
    def safe_str(value):
        if pd.isna(value):
            return ""
        return str(value)
    
    texto = texto.replace("<<Docente>>", safe_str(df_revision['Nombre Completo'][n]))
    texto = texto.replace("<<NRC>>", safe_str(df_revision['NRC'][n]))
    texto = texto.replace("<<Dominio>>", safe_str(df_revision['Dominio'][n]))
    texto = texto.replace("<<Facultad>>", safe_str(df_revision['Facultad'][n]))
    texto = texto.replace("<<Carrera>>", safe_str(df_revision['Carrera'][n]))
    texto = texto.replace("<<Recursos>>", safe_str(df_revision['Recursos'][n]))
    texto = texto.replace("<<Evaluación>>", safe_str(df_revision['Evaluación'][n]))
    texto = texto.replace("<<Estructura>>", safe_str(df_revision['Estructura'][n]))
    texto = texto.replace("<<Calificaciones>>", safe_str(df_revision['Calificaciones'][n]))
    texto = texto.replace("<<Retroalimentación>>", safe_str(df_revision['Retroalimentación'][n]))
    try:
        fecha = pd.to_datetime(df_revision['Fecha'][n])
        texto = texto.replace("<<Fecha>>", fecha.strftime("%m/%d/%Y"))
    except:
        texto = texto.replace("<<Fecha>>", safe_str(df_revision['Fecha'][n]))
    texto = texto.replace("<<Hora>>", safe_str(df_revision['Hora'][n]))
    return texto

# Función para ejecutar la generación de archivos en un hilo separado
def ejecucion():
    threading.Thread(target=generar_archivos).start()

def generar_archivos():
    archivo = ubicacion_archivo.get()
    if not archivo:
        messagebox.showwarning("Advertencia", "Seleccione un archivo antes de continuar")
        return

    df_revision = pd.read_excel(archivo, sheet_name="Observación de aulas")
    df_revision.columns = ['Dominio', 'Facultad', 'Carrera', 'NRC', 'Apellidos', 'Nombre', 'Fecha', 'Hora', 'Recursos',
                           'Evaluación', 'Estructura', 'Calificaciones', 'Retroalimentación']
    df_revision = df_revision.dropna(subset=['Nombre'])
    df_revision['Nombre Completo'] = df_revision['Apellidos'] + " " + df_revision['Nombre']
    lista_docentes = df_revision['Nombre Completo'].unique()

    seguimiento_path = os.path.join(ubicacion_carpeta_principal.get(), 'Observacion_de_aulas')
    if not os.path.exists(seguimiento_path):
        os.makedirs(seguimiento_path)

    progreso['maximum'] = df_revision.shape[0]
    estado_label.config(text="Por favor, espere...", foreground="blue")

    for n in range(df_revision.shape[0]):
        docente = df_revision['Nombre Completo'][n]
        docente_path = os.path.join(seguimiento_path, docente)
        if not os.path.exists(docente_path):
            os.makedirs(docente_path)

        archivo_path = os.path.join(docente_path, f"{docente}_{int(df_revision['NRC'][n])}-Observacion_de_aulas.tex")
        with open(archivo_path, "w", encoding="utf-8") as archivo:
            with open("formato.tex", "r", encoding="utf-8") as formato:
                texto = formato.read()
            texto = reemplazar(texto, n, df_revision)
            archivo.write(texto)

        dir_archivo_sin_ext = os.path.join(docente_path, f"{docente}_{int(df_revision['NRC'][n])}-Observacion_de_aulas")
        os.system(f'pdflatex -output-directory="{docente_path}" "{dir_archivo_sin_ext}.tex"')
        os.system(f'pdflatex -output-directory="{docente_path}" "{dir_archivo_sin_ext}.tex"')

        for ext in [".aux", ".log", ".tex"]:
            archivo_a_eliminar = f"{dir_archivo_sin_ext}{ext}"
            if os.path.exists(archivo_a_eliminar):
                os.remove(archivo_a_eliminar)

        progreso['value'] = n + 1
        ventana_principal.update_idletasks()

    estado_label.config(text="Archivos generados exitosamente", foreground="green")
    messagebox.showinfo("Éxito", "Archivos generados exitosamente")

# Configuración de la interfaz gráfica
ventana_principal = Tk()
ventana_principal.title("Generador de archivos")
ventana_principal.minsize(width=600, height=400)
ventana_principal.config(padx=15, pady=15, bg='#e0f7fa')

estilo = ttk.Style()
estilo.theme_use('clam')
estilo.configure('TButton', font=('Arial', 12), padding=10, background='#00796b', foreground='white')
estilo.map('TButton', background=[('active', '#004d40')])
estilo.configure('TLabel', font=('Arial', 12), background='#e0f7fa')
estilo.configure('TEntry', font=('Arial', 12))
estilo.configure('TProgressbar', thickness=20, troughcolor='#e0f7fa', background='#004d40')

etiqueta1 = ttk.Label(text="Ingrese la ubicación del archivo")
etiqueta1.grid(column=0, row=0, pady=(10, 2))

ubicacion_archivo = StringVar()
ubicacion_carpeta_principal = StringVar(value=os.getcwd())

boton_ingresar = ttk.Button(ventana_principal, text="Seleccionar Archivo", command=abrirArchivo)
boton_ingresar.grid(column=0, row=1, pady=(2, 10))

etiqueta2 = ttk.Label(textvariable=ubicacion_archivo)
etiqueta2.grid(column=0, row=2, pady=(0, 20))

boton_seleccionar_carpeta = ttk.Button(ventana_principal, text="Seleccionar Carpeta Principal", command=seleccionarCarpetaPrincipal)
boton_seleccionar_carpeta.grid(column=0, row=3, pady=(2, 10))

etiqueta_carpeta = ttk.Label(textvariable=ubicacion_carpeta_principal)
etiqueta_carpeta.grid(column=0, row=4, pady=(0, 20))

boton_ejecutar = ttk.Button(ventana_principal, text="Generar", command=ejecucion)
boton_ejecutar.grid(column=0, row=5, pady=(2, 10))

# Barra de progreso
progreso = ttk.Progressbar(ventana_principal, length=300, mode='determinate')
progreso.grid(column=0, row=6, pady=(10, 20))

# Etiqueta de estado
estado_label = ttk.Label(text="")
estado_label.grid(column=0, row=7, pady=(10, 20))

ventana_principal.mainloop()
