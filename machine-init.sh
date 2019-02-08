# Decrypt files
openssl enc -d -aes256 -in applications.enc -out applications.zip
openssl enc -d -aes256 -in dots.enc -out dots.zip

# Unzip files
unzip -q applications.zip && rm -rf applications.zip
unzip -q dots.zip && rm -rf dots.zip

# Install OhMyZsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Copy all the configurations
cp -R dots/.* ~

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
code --install-extension felixfbecker.php-intellisense
code --install-extension felixfbecker.php-pack
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
