# MacOS Setup

Setting up my MacOS environment for development

## Run the setup

```sh
chmod 775 setup.sh
./setup.sh
```

## Bash profile

Setup any aliases. See [my .bash_profile](.bash_profile).

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

## VS Code Extensions

See [my list of extensions](vscode-extensions.txt).

List your installed extensions:

```sh
code --list-extensions
```

## Install .Net Core

Install package downloaded from here <https://dotnet.microsoft.com/download>.
