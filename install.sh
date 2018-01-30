#!/bin/bash

PATH_PRO=$(dirname `readlink -f $0`)

# check gs
if [ ! `which gs` ];then
	echo0 3 "ghostScript not find, install......"
	echo0 3 "please input the path to store ghostScript:"
	read $PATH_GS
	while [ -d $PATH_GS ];do
		echo0 3 "please input the path to store ghostScript:"
		read $PATH_GS
		if [ ! -d ${PATH_GS} ];then
			echo0 0 "path "$PATH_GS" not accessible!"
		else
			echo0 1 "Awosome! ghostScript store in "$PATH_GS
		fi
	done
	cd $PATH_GS
	git clone https://github.com/Kozea/ghostscript.git
	cd ghostscript
	python ./setup.py install --prefix=${PATH_PRO}/
fi

# write program path in PATH
echo -e "# added by piPipes_summary installer\nexport PATH=${PATH_PRO}:\$PATH" >> ~/.bashrc
echo -e "export PYTHONPATH=${PATH_PRO}/lib_python:\$PYTHONPATH" >> ~/.bashrc


