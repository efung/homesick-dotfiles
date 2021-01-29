# General shell stuff
alias ll="ls -Fao"
alias mv="mv -i"
alias cp="cp -i"
alias rm="rm -i"
alias pu=pushd
alias po=popd
alias vi=vim

# Ruby-related
alias bx="bundle exec"

# Others
alias ips='echo -n "Ethernet: $(ipconfig getifaddr en0) "; echo -n "Wireless: $(ipconfig getifaddr en1) "; echo "External: $(curl -s http://icanhazip.com) "'
alias copywifi='echo -n $(ifconfig en1 | grep "inet " | awk "{print \$2}") | pbcopy'

half() {
    #do things with parameters like $1 such as
    /usr/local/bin/gm convert -resize 50% "$1" "half-$1"
}

shadow() {
    convert "$1"  \( -clone 0 -background gray -shadow 80x3+10+10 \) -reverse -background none -layers merge +repage -bordercolor transparent -border 30 "shadow-$1"
}

