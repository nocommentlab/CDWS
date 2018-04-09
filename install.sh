#!/usr/bin/env bash

#CSWS[CD With Steroids]
#This file is part of CSWS
#CSWS is free software: you can redistribute it and/or modify
#it under the terms of the GNU General Public License as published by
#the Free Software Foundation, either version 3 of the License, or
#(at your option) any later version.
#CSWS is distributed in the hope that it will be useful,
#but WITHOUT ANY WARRANTY; without even the implied warranty of
#MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#GNU General Public License for more details.
#You should have received a copy of the GNU General Public License
#along with CSWS  If not, see <http://www.gnu.org/licenses/>.

# Checks if the bookmarks folder not exists
echo "[I] - Checking bookmarks file into home directory..."
if [[ ! -f ~/.bookmarks ]]
then
    echo "[I] - .bookmarks file not found!"
    # Creates the bookmarks file into home user directory
    touch ~/.bookmarks
    if [[ "$?" -eq 0 && -f ~/.bookmarks ]]
    then
        echo "[I] - .bookmarks file created!"
        # Change file owner to the user that starts the sudo command
        chown  $SUDO_USER:$SUDO_USER ~/.bookmarks
    else
        echo "[E: $?] - Impossible to create ./bookmarks file. Check error code!"
    fi
fi

# Copies the script inside the /usr/bin folder
cp cdws /usr/bin
if [[ "$?" == 0 ]]
then
    echo "[I] - Script copied"
else
    echo "[E] - Error during script copying"
fi

# Sets the execution property
chmod +x /usr/bin/cdws
if [[ "$?" == 0 ]]
then
    echo "[I] - Execution bit set"
else
    echo "[E] - Error during setting execution bit"
fi

# Adds the alias to ~/.bashrc file. The source command is essential to change directory into current shell
echo "alias ccc='source /usr/bin/cdws'" >> ~/.bashrc
echo "[I] - Setup completed, restart the shell to reload the .bashrc file!"