

#!/bin/sh

enable_in_shell() {
    file=$1
    {
        
        echo '# ' >> ~/$file
        echo '#  https://github.com/WojGeek/optimize-ux-console.git   '
        echo ' '
        echo 'source ~/optimize-ux-console/main.sh'
        echo ' '
        
    } >> ~/$file
}

enable_in_shell '.bashrc'
enable_in_shell '.profile'
enable_in_shell '.bash_profile'

echo -e " - Enjoy the command console!!"