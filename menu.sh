#!/bin/bash
#comentariosss
# Función para mostrar el menú.
show_menu() {
    clear
echo " _  _ ____ _   _ _    _ 
 |  \/  |  __| \ | | |  | |
 | \  / | |__  |  \| | |  | |
 | |\/| |  __| | .   | |  | |
 | |  | | |____| |\  | |__| |
 |_|  |_|______|_| \_|\____/ 
                             
"
    echo "1. Ejecutar creararbol.sh"
    echo "2. Ejecutar holamundo.sh"
    echo "3. Ejecutar nombre.sh"
    echo "4. Salir"
    echo
}

# Bucle principal del menú.
while true; do
    show_menu

    # Lee la opción del usuario.
    read -p "Ingrese el número de la opción deseada: " choice

    case $choice in
        1)
            # Ejecutar creararbol.sh
		source arbol.sh
            read -p "Presione Enter para continuar..."
            ;;
        2)
            # Ejecutar holamundo.sh
		source holamundo.sh
            read -p "Presione Enter para continuar..."
            ;;
        3)
            # Ejecutar nombre.sh
		source nombre.sh
            read -p "Presione Enter para continuar..."
            ;;
        4)
            # Salir del menú.
            echo "Saliendo del menú."
            exit 0
            ;;
        *)
            echo "Opción no válida. Intente de nuevo."
            read -p "Presione Enter para continuar..."
            ;;
    esac
done