# Install tarball version of Tetr.IO with just a basic script!

A script to easily install Tetr.IO the tarball way on your Linux machine!

Note: This installation script is by no means affiliated with osk. If you may have a concern about script, open an issue, if you have a concern about copyright or anything related to it, please open an issue, or compose me an email. 

## Usage

Clone the repo and run the script
```bash

git clone https://github.com/spookyorange/tetrio-linux-install.git
cd tetrio-linux-install
sh ./install.sh

```

To remove the application(if it has been installed with this method)
```bash

sh ./uninstall.sh

```

Updates are handled by running the install script again, you can just run the install script and all good! However, Tetr.io desktop might have major updates which are handled manually, you may need to change the version in install.sh to make sure you got the right major version.

```bash

sh ./install.sh

```

## Details

The script will install the application in the following destinations if you have installed locally:

- ~/.tarball-installations/tetrio
- ~/.local/bin/tetrio
- ~/.local/share/applications/tetrio.desktop

## Tested Distros

- Fedora by Spookyorange
- Fedora Atomic(Silverblue) by Spookyorange
- SteamOS(Steam Deck) by Spookyorange

## Contributing

If you have a distro that you would like to add to the list of tested distros, please submit a pull request with the changes you made to the script and the distro you tested it on.
