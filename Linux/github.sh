#!/bin/bash

read -p "Enter the name of the file to do git add: " file
read -p "Choose folder: 1)C_codes 2)Linux 3)Matlab 4)Shrey-VHDL_Codes 5)C++ " folder

if [[ $folder -eq 1 ]]
then
	echo "Pushing C code"
	cp -r $file ~/Github_repo/Shrey/C_codes
	cd ~/Github_repo/Shrey/C_codes
elif [[ $folder -eq 2 ]]
then
	echo "Pushing bash script"
	cp $file ~/Github_repo/Shrey/Linux
	cd ~/Github_repo/Shrey/Linux
elif [[ $folder -eq 3 ]]
then
	echo "Pushing Matlab script"
        cp -r $file ~/Github_repo/Shrey/Matlab
        cd ~/Github_repo/Shrey/Matlab
elif [[ $folder -eq 4 ]]
then
	echo "Pushing VHDL code"
        cp $file ~/Github_repo/Shrey/Shrey-VHDL_Codes
        cd ~/Github_repo/Shrey/Shrey-VHDL_Codes
elif [[ $folder -eq 5 ]]
then
	echo "pushing C++ code"
        cp -r $file ~/Github_repo/Shrey/C++
        cd ~/Github_repo/Shrey/C++
fi

git add $file

read -p "Commit message" msg
git commit -m $msg
git push
echo "File pushed sucessfully!"

exit
