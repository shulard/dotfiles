# Install OhMyZsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Copy all the configurations
cp -R dots/.* ~
cp -R secrets/.* ~

# Initialize SSH keys
ssh-add -K ~/.ssh/ai_rsa ~/.ssh/github_rsa ~/.ssh/gitlab_rsa ~/.ssh/id_rsa ~/.ssh/bitbucket_rsa
ssh-add -A

# Import GPG keys
gpg --import ~/.gnupg/pubring.gpg

# Configure VSCode
cp applications/vscode.json "$HOME/Library/Application Support/Code/User/settings.json"

# Install VSCode extensions
code --install-extension dbaeumer.vscode-eslint
code --install-extension DotJoshJohnson.xml
code --install-extension eamodio.gitlens
code --install-extension felixfbecker.php-debug
code --install-extension bmewburn.vscode-intelephense-client
code --install-extension glen-84.sass-lint
code --install-extension ikappas.phpcs
code --install-extension marcostazi.VS-code-vagrantfile
code --install-extension mikestead.dotenv
code --install-extension ms-vsliveshare.vsliveshare
code --install-extension octref.vetur
code --install-extension onecentlin.laravel-blade
code --install-extension PeterJausovec.vscode-docker
code --install-extension robinbentley.sass-indented
code --install-extension whatwedo.twig
code --install-extension wholroyd.jinja
code --install-extension lextudio.restructuredtext
code --install-extension calsmurf2904.vscode-phpstan
code --install-extension coolbear.systemd-unit-file
