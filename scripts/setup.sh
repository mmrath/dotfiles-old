APP_PATH=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
cd $APP_PATH/..

# Download submodules
git submodule update --init --recursive

# Link .files from home directory
ln -s \
	.zshrc \
	.zshrc.local \
	$HOME

rsync -avh --no-perms init $HOME


