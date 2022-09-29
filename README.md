# MacOS Setup

Setting up my MacOS environment for development

## Run the setup

```sh
chmod 775 setup.sh
./setup.sh
```

## Git config

```sh
git config --global user.name "name ..."
git config --global user.email "email ..."
git config --global credential.helper osxkeychain
```

### Global gitignore

See [my .gitignore](.gitignore).

```sh
git config --global core.excludesfile '~/.gitignore'
```

## Connect to GitHub with SSH 

Generating a new SSH key: <https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent>.

```sh
ssh-keygen -t ed25519 -C "you@example.com" # Gernerate SSH Key
pbcopy < ~/.ssh/id_ed25519.pub # copy to clipboard
ssh -T git@github.com # verify
```

add to SSH agent

```sh
eval "$(ssh-agent -s)"
ssh-add -K ~/.ssh/id_ed25519
```

## VS Code Extensions

See [my list of extensions](vscode-extensions.txt).

List your installed extensions:

```sh
code --list-extensions
```

## Zsh New Shell Configuration .zshrc

Setup any aliases. See [my .zshrc](.zshrc).

## Oh My Zsh

Instructions to install: <https://github.com/ohmyzsh/ohmyzsh#basic-installation>

Theme and plugins:

* Spaceship-prompt <https://github.com/spaceship-prompt/spaceship-prompt#installing>
* Autosuggestion <https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md#oh-my-zsh>


