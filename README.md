# GBI_GITBASH
Tarea de Bioinformatica

# 1.10.3 Plant–Pollinator Networks
data of Saavedra and Stouffer (2013)

# Ejercicio: Escribe un script que tome uno de estos archivos y determine el número de filas (polinizadores) y columnas (plantas).
# Tenga en cuenta que las columnas están separadas por espacios y que hay un espacio al final de cada línea. 

En el presente reprositorio se detalla brevemente la actividad para llevar a cabo la realización del ejercicio

# Parte1.
Primero, para construir el script se debe combinar varios comandos:

# Se seleccionó el archivo n20.txt y para determinar el número de filas se utilizo el siguiente comando:
$ cat ../Saavedra2013/n20.txt |wc -l

Mediante el comando cat se tomó el contenido del archivo línea por línea, a su vez el comando ../ permitió retroceder un directorio con la finalidad de elegir el archivo.txt (n20.txt), por último para contar el número de líneas del archivo.txt se utiliza el comando wc -l que cuenta solo las líneas o filas del archivo específicado.

# Para determinar el número de filas se utiliza el siguiente comando:
$ head -n 1 ../Saavedra2013/n20.txt | tr -d " " | tr -d "\n" | wc -c

El comando "head -n 1" permite escoger solo la primera línea del archivo.txt que se encuentra dentro de Saavedra2013, con el comando tr -d " " para borrar el espacio que se encuentra entra los caracteres del archivo y con wc -c para contar los caracteres en este caso el número de columnas.

# Para crear el script se creo un archivo netsize.sh
Con el comando nano netsize.sh nos envió a la pizarra de lenguaje plano donde podemos crear nuestro SCRIPTING BÁSICO
Aquí principalmente se puede detallar paso a paso el procedimiento de para obtener el número de filas y columnas

# Parte 2
 Escriba un script que imprima el número de filas y columnas de cada red
# Para creal el script se creo un archivo netsize.sh
for item in ../Saavedra2013/*.txt; do cat $item | wc -l; done
echo "numero de columnas"
for a in ../Saavedra2013/*.txt; do head -n 1 $a | tr -d "\n" | wc -c; done

Finalmente, copiamos los resultados de los archivos .sh a un archivo .txt
cp netsize.sh netsize.txt
cp netsize_all.sh netsize_all.sh
