# devops-tools

## Favorite .profile

Add this to your `.profile`

### Commit one-liner


```
git_push () { git status && echo && echo $* | grep [a-zA-Z] && echo "Pushing as `git config user.name` in 5 seconds (CTRL+C to decline) ..." && sleep 5 && git config --global push.default current && git add --all && git commit -m "$*" && git push ; }
```


### Use GNU tools on Mac


```
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
