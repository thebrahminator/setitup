initialize () {
	cat /etc/*-release | grep 'DISTRIB_DESCRIPTION'
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
	read -p "Enter options seperated by comma..(eg. 21,22) (0 to go to main menu)" OPTION
	case "$OPTION" in
		"0") main_menu
	esac
}

main_menu () {
	clear
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
	read -p "Enter your choice[1-10]... " CHOICE
	case "$CHOICE" in
		"1") prog_lang
		;;
		"2") frameworks
		;;
		"3") echo "Text Editors"
		;;
		"4") echo "Version Control"
		;;
		"5") echo "Terminals"
		;;
		"6") echo "Databases"
		;;
		"7") echo "Shell"
		;;
		"8") echo "Other tools"
		;;
		"9") echo "Browsers"
		;;
		"10") echo "Containers"
		;;
		*) echo "Wrong option.. Enter a valid one"
		;;
	esac
}

initialize
main_menu
