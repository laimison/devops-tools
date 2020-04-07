# devops-tools

## Favorite .profile

Add this to your `.profile`

### Commit one-liner

```
git_push () { git status && echo && echo $* | grep [a-zA-Z] && echo "Pushing as `git config user.name` in 5 seconds (CTRL+C to decline) ..." && sleep 5 && git config --global push.default current && git add --all && git commit -m "$*" && git push ; }
```

### Auto-SSH

There are more security measures around this, but first one is to not store password in history (notice whitespace before export SSHPASS)

```
sshp () { sshpass -e ssh -o StrictHostKeyChecking=no $1 ${@:2} ;}
```

Usage per terminal:

```
export HISTCONTROL=ignoreboth
 export SSHPASS=pass
```

Usage:

```
sshp server
```

### Use GNU Shell on Mac

Not all shell scripts are suitable with Mac so it's better to use GNU shell

```
brew install coreutils findutils gnu-tar gnu-sed gawk gnutls gnu-indent gnu-getopt grep ed inetutils gnu-which make gnu-units

echo 'export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"' >> ~/.profile
echo 'export PATH="/usr/local/opt/findutils/libexec/gnubin:$PATH"' >> ~/.profile
echo 'export PATH="/usr/local/opt/gnu-tar/libexec/gnubin:$PATH"' >> ~/.profile
echo 'export PATH="/usr/local/opt/gnu-sed/libexec/gnubin:$PATH"' >> ~/.profile
echo 'export PATH="/usr/local/opt/gnu-indent/libexec/gnubin:$PATH"' >> ~/.profile
echo 'export PATH="/usr/local/opt/gnu-getopt/bin:$PATH"' >> ~/.profile
echo 'export PATH="/usr/local/opt/grep/libexec/gnubin:$PATH"' >> ~/.profile
echo 'export PATH="/usr/local/opt/ed/libexec/gnubin:$PATH"' >> ~/.profile
echo 'export PATH="/usr/local/opt/gnu-which/libexec/gnubin:$PATH"' >> ~/.profile
echo 'export PATH="/usr/local/opt/make/libexec/gnubin:$PATH"' >> ~/.profile
echo 'export PATH="/usr/local/opt/gnu-units/libexec/gnubin:$PATH"' >> ~/.profile
echo 'export PATH="/usr/local/opt/gettext/bin:$PATH"' >> ~/.profile
```

