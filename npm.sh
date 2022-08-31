# Set permissions
echo "Setting npm permissions"
sudo chown -R $USER:$(id -gn $USER) $HOME/.config

# Install commonly used clis
echo "Downloading npm clis"
sudo npm i -g @antfu/ni
sudo npm i -g corepack
sudo npm i -g npm
sudo npm i -g pnpm
