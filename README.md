# Agregar algunas funciones o atributos a la shell de Linux.

Optimizar mi propia **experiencia de usuario** simplificando el trabajo en la consola de comandos.

    > Simply do more with fewer keystrokes.
    >>  W.

Características agregadas:

    - Atajos para gestión de paquetes
    - Personalizar el prompt del Bash basado en Powerline
    - Funciona para distro derivadas de Red Hat/OpenSuse/Fedora o Debian/Ubuntu
    - 
        

####  Instalación 

    $ git clone https://github.com/WojGeek/optimize-ux-console.git

####  Activación

    $  bash set-bash-env/install.sh



#### Screenshot


![MacVim+Solarized+Powerline+CtrlP](https://raw.github.com/b-ryan/powerline-shell/master/bash-powerline-screenshot.png)

(https://github.com/WojGeek/optimize-ux-console/blob/main/prompt.png)

#### Prestaciones del Prompt con Powerline 

- Muestra algunos detalles importantes sobre la rama git.
- Si surge algún código de error con un comando, cambia de color.
- Acorte la ruta mostrada con puntos suspensivos, si está demasiado metido en un árbol de directorios.
- Muestra el entorno de Python actual. 
- Es fácil de personalizar y ampliar


#### En caso de falla durante la instalación de Powerline

> Instalación manual del prompt
>>  - Instalación usando pip:

- Derivados de Red Hat/Fedora/OpenSuse:

```
     $ sudo dnf install -y powerline powerline-fonts

```

- Derivados de Debian/Ubuntu:

```
     $ sudo apt install -y  powerline fonts-powerline 
     
```

- Instalación utilizando pip:

```
    $ pip install powerline-shell

```

#####  Instalar desde el repositorio Git de Buck Ryan:

```
   $ git clone https://github.com/b-ryan/powerline-shell
   $ cd powerline-shell
   $ python setup.py install

```


###### Desinstalación 

> Comentar esta línea en los archivos:
- .bashrc
- .profile
- .bash_profile

```
    
    # source $HOME/optimize-ux-console/main.sh


```



