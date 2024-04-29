#!/bin/bash

app_name="tetrio"
tetrio_desktop_version="9"
literal_name_of_installation_directory=".tarball-installations"
universal_path_for_installation_directory="$HOME/$literal_name_of_installation_directory"
app_installation_directory="$universal_path_for_installation_directory/tetrio"
official_package_location="https://tetr.io/about/desktop/builds/$tetrio_desktop_version/TETR.IO%20Setup.tar.gz"
tar_location="./hello.tar.gz"
open_tar_application_data_location="tetrio-desktop-9.0.0"
local_bin_path="$HOME/.local/bin"
local_application_path="$HOME/.local/share/applications"
app_bin_in_local_bin="$local_bin_path/$app_name"
desktop_in_local_applications="$local_application_path/$app_name.desktop"

echo "Welcome to Tetr.io tarball installer, just chill and wait for the installation to complete!"

sleep 1

echo "Installing the latest package"
curl -L -o $tar_location $official_package_location

tar -xvf $tar_location

echo "Installed and untarred successfully"

if [ ! -d $universal_path_for_installation_directory ]; then
  echo "Creating the $universal_path_for_installation_directory directory for installation"
  mkdir $universal_path_for_installation_directory
fi

mv $open_tar_application_data_location $app_installation_directory

echo "$app_name successfully moved to your safe place!"

rm $tar_location

if [ ! -d $local_bin_path ]; then
  echo "$local_bin_path not found, creating it for you"
  mkdir $local_bin_path
fi

touch $app_bin_in_local_bin
chmod u+x $app_bin_in_local_bin
echo "#!/bin/bash
$app_installation_directory/TETR.IO" >> $app_bin_in_local_bin

echo "Created executable for your \$PATH if you ever need"

curl -o "$app_installation_directory/icon.png" https://txt.osk.sh/branding/tetrio-color.png

touch $desktop_in_local_applications
echo "
[Desktop Entry]
Name=Tetr.io
Keywords=game,tetris,tetrio
Exec=$app_installation_directory/TETR.IO
Icon=$app_installation_directory/icon.png
Terminal=false
Type=Application
Categories=Game;Online;
" >> $desktop_in_local_applications

echo "Created desktop entry successfully"

sleep 1

echo "Installation is successful"

sleep 1

echo "Done, and done, have fun!"

sleep 1

exit 0
