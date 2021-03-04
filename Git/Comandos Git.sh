# -- Muestra la vercion de el git
git version

# -- Coloca el nombre a git
git config --global user.name "Nombre usuairo"

# -- Colocar el Mail de el que subeel codigo
git config --global user.email "Mail de el responsable del codigo"

# -- muestra la lista de configuraciones de git
git config --list #  <!> REVISAR

# -- descarga el codigo segun la ruta dada
git clone URL


# -- para que un archivo no este en git se debe crear un archivo .gitignore
vim .gitignore


# -- iniciar mi proyecto a git

git init

# -- agrega al staging area
git add Directoreio_o_archivo
	# - Agrega al Staging area Todos lo archivos en este Repocitorio
	git add .


# -- remover del steting area
git rm --cached Archivo_a_eliminar

# git rm -r  --cached si es directorio
git rm --force #- Elimina el archivo de el disoco

# -- le indica a donde va a subir el repositorio
git remote add origin URLRepocitorios

# -- envia el archivo a el gestor de verciones
git push origin master

# -- trae el codigo de el Gestor de verciones
git pull origin master

# -- Para comitiar el codigo
git commit -m "Mensaje"

# -- Historial de el codigo
git log
	#- muestra el historial de el gin
	git log archivo



# -- Muestra el historial de los cambios de el archivos
git show

# -- Estado de repocitorio
git status

# -- mustra las diferencias de el codigo
git diff Commit Commit


#Todo cambia a la vercion anterior
git reset Commit --hard



# -- Crear una nueva branch
# Rama master -- Rama principal
# Rama development -- Rama Experimental
# Rama hotfix -- Rama Arreglo en caleinte
git branch NombreDeBranch

# -- Pasarnos a Brinch
git checkut NombreDeBranch

# -- muestra las branch
git branch
#  agregando -A muesra las que estan en el remoto
# y en el local

# mustra las branch que emos mergeado
git branch --merged

# -- Mergear branch
git merge NombreDeBranch


# -- sube el codigo a el gestor de verciones
# en la branch asignada
git push -u origin NombreDeBranch

# -- Eliminar mi branch
git push origin --delete miNuevaBranch
