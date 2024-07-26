COMANDOS PARA CONFIGURACION GIT GITHUB: 

SI SE QUIERE DESCARGAR SOLO UNA CARPETA DEL REPOSITORIO, USAR EL LINK: https://downgit.github.io/#/home

# ubicarse en las carpetas cd /c/Users/simpl/workspace/
--------------------------------------
git config --global user.name danicor2688
git config --global user.email danicor2688@gmail.com
git config --list
# Se utiliza para listar todas las configuraciones de Git que están activas en tu entorno actual.

git config --global credentials.helper cache
# Para almacenar tus credenciales (como nombre de usuario y contraseña) en una memoria caché temporal.

git show
# Muestra la información de un objeto especificado en el repositorio de Git, lo que se modifico de un commit a otro.

git config --list --show-origin
# Se utiliza para mostrar todas las configuraciones de Git y sus orígenes.

git config --global --edit
# Se abre el editor de texto predeterminado para editar el archivo .gitconfig.
# Para pdoer agregar alias a comandos en especifico, ejm:
[alias]
    co = checkout

git config --global --unset credentials.helper
# Para eliminar la configuración global del credentials.helper.
# Con esto no aparecera ninguna línea relacionada con credential.helper en la salida.

# valida los datos que configuraste al inicio

git remote add origin https://github.com/daniel2688/jenkins-pipeline-app.git   vincula el local con el remoto
# se utiliza para agregar un nuevo repositorio remoto a tu repositorio local de Git. "origin" es el nombre convencionalmente 
# utilizado para el repositorio remoto principal en Git, pero puedes elegir otro nombre si lo prefieres.

git remote set-url origin https://github.com/daniel2688/Comandos-GitHub-Linux.git
# para actualizar la URL del remoto existente llamado "origin"

git config --global user.email 117961516+daniel2688@users.noreply.github.com
# para que GitHub no muestre mi correo personal y use este correo especial para las operaciones de Git

git config --global -e
# abrirá el archivo de configuración global en el editor de texto predeterminado de tu sistema
# para realizar cambios en la configuración directamente del archivo .gitconfig

COMANDOS PARA USO DE GIT: (git add prepara los cambios de mi archivo actual y sube los archivos al staggin area)
-------------------------

INICIAR SESION EN LA CARPETA workspace para poder trabajar en el repositorio (cd /mnt/c/Users/simpl/workspace/)
MI RAMA PRINCIPAL ES main:

git init               
# para iniciar el repositorio117961516+daniel2688@users.noreply.github.com.

git init -b main
# para iniciar el repositorio main

ls -a                   
# para ver directorios ocultos
code .                  
# abre la carpeta en el visual studio code

git status             
# muestra el estado actual de nuestro repositorio

git add archivo.txt    
# agrega el archivo a la etapa de staggging (prueba)

git add .               
# agrega todos los archivos

git commit -m git commit "mensaje sobre los cambios que se realizo" o git commit
# valida si es que se realizado algun cambio

git rm archivo.txt  o  git rm *.txt (para remover varios archivos con extension txt)
# para remover el archivo local, dejarlo en estado para ejecutar commit -m y guardar los cambios en stagging

git restore --staged archivo.txt
# para restaurar archivo en la etapa de staggin area

git restore archivo.txt
# para recuperar el archivo local

git mv archivo.txt archivotest.txt
# para poder cambiar el nombre del archivo en estaggin area y listo para ejecutar commit -m

git status -s
# para ver los estados de los archivos

git diff
# para ver la nuevas modificaciones respecto a estado actual del archivo

git diff --staged
# para ver los cambios en la etapa de stagging

git log --oneline
# para ver el historial de cambio

git log --graph
# para ver el historial de cambio como ramas

git log --stat
# se utiliza para mostrar el historial de commits junto con un resumen de los cambios realizados en cada commit

git branch
# para ver las ramas

git branch -m nuevo-nombre
# para cambiar el nombre de la rama local, para eso tienes que estar en la misma rama a cambiar

git branch -m viejo-nombre nuevo-nombre
# para cambiar el nombre de una rama en especifica a otra rama

git switch -c "nombre de la rama"
# para poder crear una rama con ese nombre y cambiar a esa rama para que sea apuntado por el HEAD

git switch "nombre de la rama"
# para poder crear una rama con ese nombre y para que sea apuntado por el HEAD

git checkout "nombre de la rama"
# para ir a la rama indicada

git checkout archivo.txt
# para deshacer los cambios locales en un archivo y regresar al ultimo estado confirmado

git checkout hash-de-la-confirmacion -- nombre-del-archivo
# para viajar en el tiempo y ver el contenido del archivo en ese punto especifico del historial

git checkout -b "nombre de la rama"
# para crear y cambiar a la rama indicada

git checkout origin/main
# para estar en un commit especifico que representa la ultima posicion de la rama remota main 

git merge --continue
# para continuar con el proceso de merge en un conflicto de fusion de ramas

git reset archivo.txt
# para regresar al archivo indicado anteriormente

git merge "nombre de la rama"
# Hace la union de la rama con la rama master, para eso se debe de estar en la rama main y escriibir texto descriptivo

git branch -d "nombre de la rama"  (debes estar en otra rama para eliminarla)
# para eliminar la rama que ya ha sido completamente fusionada con la rama actual, mostrara mensaje de advertencia

git branch -D "nombre de la rama"
# para eliminar la rama sin importar si sus cambios se han fusionado o no

----------------------------------------------------------------------------------------
git remote add origin https://github.com/daniel2688/prueba1.git
# para que nosotros podamos indicar si es que vamos a tener un servidor remoto para subir nuestros cambios.
# le indicamos de donde nosotros vamos a obtener nuestro codigo y a donde vamos a subir los cambios realizados.

git push -u origin "nombre de la rama" o git push --set-upstream origin "nombre de la rama"
# si queremos subir la rama en el repositorio GitHub estando en cualquier rama
# adicional se configuro una relación de seguimiento entre la rama local y la rama remota
# usariamos ahora solo "git push" en caso de hacer un push directo

git config --global push.default simple
# para que las ramas locales que tengan una rama remota con el mismo nombre seran configuradas automaticamente
# para realizar push a esta rama remota.

git push origin --delete "nombre de la rama" o main
# para elimnar la rama en el repositorio GitHub

git branch -r
# Muestra todas las ramas remotas.

git fetch --prune
# Descarga los cambios de todos los repositorios remotos y elimina las ramas remotas que ya no estan presentes.

git remote -v
# muestra las URLs de los repositorios remotos vinculados a tu repositorio local. 
# La salida incluirá tanto la URL para recuperar (fetch) como la URL para enviar (push) cambios al repositorio remoto

git pull origin main --allow-unrelated-histories

git reset "ingresar commit" --hard
# Para deshacer los cambios locales en todos los archivos y regresar al ultimo estado confirmado.

git reset "ingresar commit" --soft
# Para deshacer los cambios locales en todos los archivos y mantener los cambios en la etapa de staggin area.

COMANDOS PARA USO DE LINUX:    abrir archivo de para registrar nameserver 8.8.8.8  con sudo nano /etc/resolv.conf
--------------------------------------------------
ls -a
# veo todas las carpetas hasta las ocultas

touch archivo.txt
# crear archivo.txt

touch archivo.txt carpeta/carpeta2
# se crea el archivo.txt y se mueve a la carpeta indicada

cat archivo.txt
# imprime el contenido del archivo

cp -r archivo.txt archivo1.txt
# copia todos los archivos de archivo.txt a archivo2.txt

nano archivo.txt o vim archivo.txt
# escribir en el archivo.txt y salir con Ctrl+x

rm archivo.txt
# eliminar el archivo

rm -rf archivo.txt
# elimina carpeta sin necesidad de dar confiramcion

rm archivo.txt/carpeta
# elimina archivo.txt dentro de la subcarpeta indicada

mv archivo.txt archivo1.txt
# cambiar el nombre del archivo o mueve el archivo en la carpeta indicada

mv /mnt/c/Users/simpl/Downloads/sam/aws-sam-cli-linux-x86_64.zip /mnt/c/Users/simpl/workspace/cli_sam/
# mover un archivo de una ruta a otra ruta (usando ruta absoluta)

cd archivo; mkdir practica1; pwd
# ejecuta multiples comandos

mkdir -p carpeta1/carpeta2/carpeta3
# crea todos los directorios de manera recursiva, aun asi no exita carpeta1

cd carpeta; rm -rf carpeta
# se coloca en la carpeta y procede eliminar el archivo de forma recursiva

ll carpeta o ls -l carpeta
# se utiliza para listar información detallada sobre los archivos y directorios dentro de la carpeta
# indica permisos,  numero de enlaces, propietario, grupo, tamaño, fecha de modificacion, nombre de archivo

echo "texto que deseo imprimir">archivo.txt
# para escribir el texto especificado "texto que deseo imprimir" en el archivo llamado "archivo.txt"

echo "texto que deseo imprimir 2">>archivo.txt
# para escribir una segunda linea en el"archivo.txt"

vi test.txt           para guar los cambios y salir (save + quit):   :wq
# abre un editor en la consola

ls /etc/*release*
# proporciona información detallada sobre la distribución y la versión específica de Ubuntu que estás utilizando

cat /etc/*release*
# muestra el contenido de todos los archivos relacionados con la información de la versión y la distribución presentes en el directorio

ls -lt
# Para listar archivos en un directorio en orden cronológico de modificación.

sudo ls /root
# para ver los archivos en el directorio root

tree "carpeta"
# se utiliza para mostrar la estructura de directorios y archivos de manera jerárquica en forma de árbol.

mv *.sh o 
mv *.txt
# mueve los archivos que terminan con ese valor

Ctrl + K 
# para eliminar todo el contenido del archivo

COMANDOS BASH:
---------------
crear script.sh
comentar con nano el script.sh con: #! /bin/bash, para luego ejecutar ./script.sh

dpkg -l | grep git o aws o terraform
# muestra informacion sobre los paquetes instalados en el sistema relacionados con git.

