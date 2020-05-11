# devops-tools

## .profile

```
# Add & commit and push in one-liner
git_push () { git status && echo && echo $* | grep [a-zA-Z] && echo "Pushing as `git config user.name` in 5 seconds (CTRL+C to decline) ..." && sleep 5 && git config --global push.default current && git add --all && git commit -m "$*" && git push ; }

# Do not store passwords in history when $ <whitespace>MY_PASSWORD_VARIABLE=test used 
export HISTCONTROL=ignoreboth

# Remember SSH password, you can use ' SSHPASS=password' to store the password. Usage: sshp server
sshp () { sshpass -e ssh -o StrictHostKeyChecking=no $1 ${@:2} ;}

# Use GNU Shell on Mac
brew install coreutils findutils gnu-tar gnu-sed gawk gnutls gnu-indent gnu-getopt grep ed inetutils gnu-which make gnu-units || true
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

# Better 'git pull' alternative, see https://stackoverflow.com/questions/15316601/in-what-cases-could-git-pull-be-harmful
git config --global alias.up '!git remote update -p; git merge --ff-only @{u}'
```