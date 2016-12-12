SCRIPT_PATH=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
cd $SCRIPT_PATH/..

APP_PATH=`pwd`

# Download submodules
git submodule update --init --recursive

# Link .files from home directory
ln -s \
	$APP_PATH/.zshrc \
	$APP_PATH/.zshrc.local \
	$HOME

rsync -avh --no-perms init/ $HOME/


