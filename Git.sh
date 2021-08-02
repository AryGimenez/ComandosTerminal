# -- Muestra la vercion de el git
git version




# -- Coloca el nombre a git  (En caso de no aver configurado en forma global se debe sacar --global)
git config --global user.name "Nombre usuairo"

# -- Colocar el Mail de el que subeel codigo
git config --global user.email "Mail de el responsable del codigo"

# -- Guarda las credenciales permanentemente  (En caso de no aver configurado en forma global se debe sacar --global)

git config  --global  credential.helper store

# -- muestra la lista de configuraciones de git
git config --list #  <!> REVISAR

# -- clona seguna el repositorio paso por url
git clone URL

# -- Crear credencial para guarcar
#    Usuario y Password de GitHub
#    https://blog.openalfa.com/como-evitar-que-git-solicite-usuario-y-contrasena-cada-vez
git config --global credential.helper store
#   si no queres cuardar en el disoc esto lo hace por tanto timpeo como dice el numero
#   En este caso son Mili Segundos
git config --global credential.helper 'cache --timeout=3600'

# -- Ve las difernecias entre mi maquina y el repocitorio
git diff # <!> NO FUNCIONA


# -- para que un archivo no este en git se debe crear un archivo .gitignore
vim .gitignore
-

# -- iniciar mi proyecto a git

git init

# -- agrega al staging area
git add Directoreio_o_archivo
	# - Agrega al Staging area Todos lo archivos en este Repocitorio
	git add .

	git add -A #-- <?> diferencias entre add .


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
git diff  # <?> NO ME MUESTRA



#Todo cambia a la vercion anterior
git reset Commit --hard

#-- Muestra los Repocitiorios remotos
git remote -v



#  14:00 Jueves 29 Bulebar artigas 408 esquina solano Garcia.

# -- Crear una nueva branch
# Rama master -- Rama principal
# Rama development -- Rama Experimental
# Rama hotfix -- Rama Arreglo en caleinte
git branch NombreDeBranch   <?>

# -- Crea una branch
git checkout -b NombreDeBranch

# -- Pasarnos a branck
git checkut NombreDeBranch




# -- muestra las branch
	git branch
#  agregando -A muesra las que estan en el remoto
# y en el local
git branch -a


# -- mustra las branch que emos mergeado
git branch --merged # <?> Que es mergead


# -- Mergear branch
git merge NombreDeBranch


# -- sube el codigo a el gestor de verciones
# en la branch asignada
git push -u origin NombreDeBranch

# -- Eliminar mi branch de el Repocitorio Externo
git push origin --delete miNuevaBranch

# -- Elimina la branch LOCALMENTE
git branch -d miNuevaBranch
