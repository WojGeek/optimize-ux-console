# Agregar algunas funciones o atributo a la shell de Linux.

    Espero optimizar mi propia experiencia de usuario en el uso diario de la consola de comandos.

Features:

    - Alias for Packages management 
    - Powerline prompt
    - new ones coming soon
        

## Descargar en el PC

    TODO: git clone https://github.com/WilliansPatino/set-bash-env.git

##  Instalación

    TODO: bash set-bash-env/install.sh



## Modelo del prompt 


![MacVim+Solarized+Powerline+CtrlP](https://raw.github.com/b-ryan/powerline-shell/master/bash-powerline-screenshot.png)

## Prestaciones del Powerline 

- Muestra algunos detalles importantes sobre la rama git/svn/hg/fossil (ver más abajo)
- Cambia de color si el último comando salió con un código de error
- Si está demasiado metido en un árbol de directorios, acorte la ruta mostrada con puntos suspensivos
- Muestra el entorno [virtualenv](http://www.virtualenv.org/)  de Python actual. 
- Es fácil de personalizar y ampliar. Vea a continuación para más detalles.


## Instalación manual del prompt


- Instalación usando pip:

```
pip install powerline-shell
```

- o desde el repositorio Git:

```
git clone https://github.com/b-ryan/powerline-shell
cd powerline-shell
python setup.py install
```


## Cómo desabilitar este entorno

Comentar esta línea:

```
    TODO: source /home/wp/scripting-backup/main.sh

```

##  Dónde buscar 

- .bashrc
- .profile
- .bash_profile




