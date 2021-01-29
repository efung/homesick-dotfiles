if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi

if [ -f ~/.bash_aliases ]; then
  source ~/.bash_aliases
fi

export JAVA_HOME=`/usr/libexec/java_home -v 1.8`
if [ -e /Users/efung/.nix-profile/etc/profile.d/nix.sh ]; then . /Users/efung/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer
