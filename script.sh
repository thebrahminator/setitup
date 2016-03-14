initialize () {
	cat /etc/*-release | grep 'DISTRIB_DESCRIPTION' | grep '14.04'
}

prog_lang () {
	clear
	echo -e "Programming Languages\n"
	for i in "11.Java\n12.Ruby\n13.Php\n14.Rust"; do
		echo -e $i
	done
	read -p "Enter options seperated by comma..(eg. 11,12) (0 to go to main menu).. " OPTION
	case "$OPTION" in
		"0") main_menu
	esac
}		

frameworks () {
	clear
	echo -e "Frameworks\n"
	for i in "21.Rails\n22.Laravel\n23.Django\n24.Node.js\n25.Meteor\n26.Phoenix\n"; do
		echo -e $i
	done	
	read -p "Enter options seperated by comma..(eg. 21,22) (0 to go to main menu).." OPTION
	case "$OPTION" in
		"0") main_menu
	esac
}

text_editors () {
	clear
	for i in "31.Vim\n32.GNU/Emacs\n33.Sublime\n34.Atom\n35.Komodo\n36.Brackets"; do
		echo -e $i
	done
	read -p "Enter options seperated by comma..(eg. 31,32) (0 to go to main menu).." OPTION
	case "$OPTION" in
		"0") main_menu
	esac	
}

version_control () {
	clear
	for i in "41.Git\n42.Mercurial\n43.SVN"; do
		echo -e $i
	done
	read -p "Enter options seperated by comma..(eg. 41,42) (0 to go to main menu).." OPTION
	case "$OPTION" in
		"0") main_menu
	esac
}

terminals () {
	clear
	for i in "51.Terminator\n52.Tilda\n53.Guake\n54.Yakuake\n55.Konsole"; do
		echo -e $i
	done
	read -p "Enter options seperated by comma..(eg. 51,52) (0 to go to main menu).." OPTION
	case "$OPTION" in
		"0") main_menu
	esac
}

databases () {
	clear
	for i in "61.MySql\n62.Postgresql\n63.Mongodb\n64.Redis"; do
		echo -e $i		
	done
	read -p "Enter options seperated by comma..(eg. 61,62) (0 to go to main menu).." OPTION
	case "$OPTION" in
		"0") main_menu
	esac
}

shell () {
	clear 
	for i in "71.Bash\n72.Zsh\n73.Tcsh\n75.Kcsh"; do
		echo -e $i
	done
	read -p "Enter options seperated by comma..(eg. 71,72) (0 to go to main menu).." OPTION
	case "$OPTION" in
		"0") main_menu
	esac
}

other_tools () {
	clear
	for i in "81.Gimp\n82.ImageMagick\n83.ffmpeg"; do
		echo -e $i
	done
	read -p "Enter options seperated by comma..(eg. 81,82) (0 to go to main menu).." OPTION
	case "$OPTION" in
		"0") main_menu
	esac
}

browsers () {
	clear
	for i in "91.Firefox-dev\n92.GoogleChrome\n93.Chromium"; do
		echo -e $i
	done
	read -p "Enter options seperated by comma..(eg. 91,92) (0 to go to main menu).." OPTION
	case "$OPTION" in
		"0") main_menu
	esac
}

containers () {
	clear
	for i in "101.Docker\n102.Vagrant"; do 
		echo -e $i
	done
	read -p "Enter options seperated by comma..(eg. 101,102) (0 to go to main menu).." OPTION
	case "$OPTION" in
		"0") main_menu
	esac
}

oh_my_zsh () {
	clear
	echo "111.OhMyZsh"
	read -p "Enter option(eg. 111) (0 to go to main menu).." OPTION
	case "$OPTION" in
		"0") main_menu
	esac
}

main_menu () {
	echo "1. Programming Languages"
	echo "2. Frameworks"
	echo "3. Text Editors"
	echo "4. Version Control"
	echo "5. Terminals"
	echo "6. Databases"
	echo "7. Shell"
	echo "8. Other Tools"
	echo "9. Browsers"
	echo "10. Container"	
	echo "11. OhMyZsh"
	read -p "Enter your choice[1-10]... " CHOICE
	case "$CHOICE" in
		"1") prog_lang
		;;
		"2") frameworks
		;;
		"3") text_editors
		;;
		"4") version_control
		;;
		"5") terminals
		;;
		"6") databases
		;;
		"7") shell
		;;
		"8") other_tools
		;;
		"9") browsers
		;;
		"10") containers
		;;
		"11") oh_my_zsh
		;;
		*) echo "Wrong option.. Enter a valid one"
		;;
	esac
}

initialize
main_menu
