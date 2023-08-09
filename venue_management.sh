#!/bin/bash

RED= `tput setaf 1`
#RESET= 'tput sgr0'

#	FUCTIONS FOR EACH MENU OPTION
register_patron() {
	clear
	echo "Patron Registration"
	echo "==================="
	read -p "Patron ID : " patron_id
	while [[ ! "$patron_id" =~ ^[0-9]{2}((WMR||wmr)[0-9]{5})$ ]]; do
		echo "${RED}Please Enter Valid ID!"
		read -p "Patron ID : " patron_id
	done
	
	read -p "Patron Full Name(As per NRIC): " patron_name
	while [[ ! "$patron_name" =~ ^[A-Za-z]$ ]]; do
		echo -r "Please Enter Full Name (As per NRIC)"
		read -p "Patron Full Name(As per NRIC): " patron_name
	done
	
	read -p "Contact Number : " contact_no
	while [[ ! "$contact_no" =~ ^[0-9]$ ]]; do
		echo "Invalid contact number"
		read -p "Contact Number : " contact_no
	done
	
	read -p "Email Address : " email
	

}

search_patron() {
	echo "Search Patron Details"

}

add_venue() {
	echo "Add New Venue" 

}

list_venue() {
	echo "List Venue"
	
}

book_venue() {
	echo "Book Venue"

}

# DISPLAY MENU AND READ USER CHOICE

while true; do
	clear
	echo " University Venue Management Menu"
	echo " ================================"
	echo 
	echo " A - Register New Patron"
	echo " B - Search Patron Details"
	echo " C - Add New Venue"
	echo " D - List Venue"
	echo " E - Book Venue"
	echo " Q - Exit from Program"
	read -p " Please select a choice: " choice
	
	case $choice in
	[Aa])
		register_patron
		;;
	[Bb])
		search_patron
		;;
	[Cc])
		add_venue
		;;
	[Dd])
		list_venue
		;;
	[Ee])
		book_venue
		;;
	[Qq])
		echo "Exiting..."
		exit 0
		;;
	*)
		echo
		echo "${RED} Invalid choice! Please enter (A-E/Q to end program)"
		echo
		;;
	esac
	
	read -p " Press Enter to continue..."
done
