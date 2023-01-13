
clear

read -p "Introduce un nombre: " usuario
let conexiones=0

for i in `cat /workspaces/shellscripts/usuarios.txt | cut -f1 -d" "`
do
    if [ "$i" == "$usuario" ];then
        conexiones=$(($conexiones+1))
    fi

done

echo "El usuario $usuario se ha conectado $conexiones veces"