#!/bin/bash

echo "Installing spicetify"
curl -fsSL https://raw.githubusercontent.com/spicetify/spicetify-cli/master/install.sh | sh

echo "Changing spotify-client permissions"
sudo chmod a+wr /usr/share/spotify-client
sudo chmod a+wr /usr/share/spotify-client/Apps -R

echo "Editing spicetify config.nini"
sed 's/spotify =/spotify = \/usr\/share\/spotify-client/' ~/.config/spicetify/config-xpui.ini

spicetify backup apply

echo "Installing spicetify marketplace"
curl -fsSL https://raw.githubusercontent.com/spicetify/spicetify-marketplace/main/resources/install.sh | sh
