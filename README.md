# linux-scripts

## git commit in one line

Add this to your `.bash_profile`

```
git_push () { git status && echo && echo $* | grep [a-zA-Z] && echo "Pushing as `git config user.name` in 5 seconds (CTRL+C to decline) ..." && sleep 5 && git config --global push.default current && git add --all && git commit -m "$*" && git push ; }
```

