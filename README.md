Minecraft Server Installer
==========================

This project will make it super easy to install a MineCraft server. You can
install it with `curl`, `wget`, running it as a script, or using `git`. It is
best to use `git` if you would like to be able to easily update this script
itself.  However, if you would prefer to do this with manual dowloading - you
can just set up your server with `curl`, `wget`, or by manually executing the
`bin/minecraft` script.

Super Easy Installation
-----------------------

You can install this script very easily with `curl` by using the following
command in the directory where you want your game installed. This can be any
directory.

    curl -O https://raw.github.com/monokrome/minecraft-server-installer/master/bin/minecraft && chmod +x minecraft && ./minecraft

If you don't have `curl`, you can use `wget`.

    wget https://raw.github.com/monokrome/minecraft-server-installer/master/bin/minecraft && chmod +x minecraft && ./minecraft
    

Installation With Git
---------------------

If you'd like to keep this script up to date with `git` then run the following
commands. They will create a directory called 'minecraft' where your game will
be installed.

    git clone http://github.com/monokrome/minecraft-server-installer minecraft
    cd minecraft
    bin/minecraft

You can update the script from the newly created minecraft directory with a
simple `git pull` command.

    git pull

All of your configuration files can be found in the 'etc' directory, and the
script for launching your server can be run with the command `bin/minecraft`
from inside your 'minecraft' directory.

