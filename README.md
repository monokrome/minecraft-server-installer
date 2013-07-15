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

FAQ
---

Q: MineCraft is only give one gigabyte of RAM. How can I increase this?

By default, this script tells Java to run Minecraft with 1024M of RAM.

However, the amount of RAM that you want is easily configurable. You can simply
export the amount of RAM as an environment variable or you can edit the
`default_memory_size` option at the top of the script located at
`bin/minecraft`. This option is always set in Megabytes. For those who do not
know, one gigabyte is 1024 megabytes.

So, some example sizes that you could use:

- 1024 for one gigabyte
- 2048 for two gigabytes
- 4096 for four gigabytes
- 8192 for eight gigabytes

One example is that you could export MINECRAFT_MAX_MEMORY in your
profile (${HOME}/.bashrc for bash, ${HOME}/.zshrc for ZSH, etc):

    export MINECRAFT_MAX_MEMORY=4096

You could also export this variable whenever you run the script like so:

    MINECRAFT_MAX_MEMORY=4096 ./bin/minecraft

If you know how to edit a bash script, you can also change the
`default_memory_size` on line seven of `bin/minecraft`. This option is the
least recommended of options, but useful if you have no way to change your
environment (as much as I doubt that's even possible) for some reason.

