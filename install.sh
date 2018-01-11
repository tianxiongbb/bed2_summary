#!/bin/bash

PATH_PRO=$(dirname `readlink -f $0`)
echo -e "# added by piPipes_summary installer\nexport PATH=${PATH_PRO}:\$PATH" >> ~/.bashrc
echo -e "export PYTHONPATH=${PATH_PRO}/lib_python:\$PYTHONPATH" >> ~/.bashrc
