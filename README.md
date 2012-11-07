User Level Package Manager
==========================
Ulpm is a package manager that does not need root privileges to install the packages. It downloads the source code of the package, and compile it indicating a directory that the user has access as destination.


Installing
----------
Extract ulpm somewhere and add this to your `~/.bashrc`:

    cd place_where_ulpm_is
    . bashrc
    cd ~

Done, ulpm is installed.


Usage
-----
You must be in ulpm directory to run ulpm, the commands are:
* `./ulpm list` Lists available packages and which are installed (ulpm will have to check package per package to know if it is installed, so it may take a few seconds to complete the list)
* `./ulpm install package-name` Installs package-name if it is not already installed
* `./ulpm install package-name force` Installs package-name even if it is considered already installed.
* `./ulpm uninstall package-name` Tries to uninstall package-name

Configuration
-------------
In `user.sh` you can tell where ulpm will install it's stuffs. By default it will use `$HOME/local` as destination to every package installed through ulpm. You may change it to somewhere else if you want.


How it works
------------
In the `repo/` there is the set of package description. Each package description tells how to verify if the package is already installed, how to fetch the package's source code, how to compile and install the package and it's dependencies. It is all that ulpm needs to know to manage the package.

### Uninstall
When a package is installed using ulpm, every file that the package creates is listed by ulpm. This file list is used to do the uninstall process.

So, uninstalling is very limited, it doesn't know if some package is depending on what is being uninstalled or how to uninstall a package without the file list.
