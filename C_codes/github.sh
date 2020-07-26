#!/bin/bash

read -p "Enter the name of the file to do git add: " file
read -p "Choose folder: 1)C_codes 2)Linux 3)Matlab 4)Shrey-VHDL_Codes  " folder
read -p "Commit message" msg
if [ $folder=='1' ]
then
	cp $file ~/Github_repo/Shrey/C_codes
	cd ~/Github_repo/Shrey/C_codes
	git add $file
	git commit -m $msg
	git push
elif [ $folder == '2' ]
then
	cd ~/Github_repo/Shrey/Linux
	cd ~/Github_repo/Shrey/Linux
	git add $file
	git commit -m $msg
	git push
elif [ $folder == '3' ]
then
        cd ~/Github_repo/Shrey/Matlab
        cd ~/Github_repo/Shrey/Matlab
	git add $file
	git commit -m $msg
	git push
elif [ $folder == '4' ]
then
        cd ~/Github_repo/Shrey/Shrey-VHDL_Codes
        cd ~/Github_repo/Shrey/Shrey-VHDL_Codes
	git add $file
	git commit -m $msg
	git push
fi
