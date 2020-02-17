###########
# Go Lang dev environment
###########
# I have unset the GOROOT as set by homebrew because I need multiple versions of go. 
# See https://dave.cheney.net/2014/04/20/how-to-install-multiple-versions-of-go
###########
#export GOROOT="$(brew --prefix golang)/libexec" #homebrewed go
export go_latest="$(echo "/usr/local/Cellar/go/"*"/libexec/")"
export go_11="/usr/local/Cellar/go@1.11/1.11.13/libexec/"
export GOPATH="${HOME}/.go"

function removeFromPath() {
  export PATH=$(echo $PATH | sed -E -e "s;:$1;;" -e "s;$1:?;;")
}

#############
# setgo() sets the version of golang to one of several installed on this system
#############
function setgo() {
  if [ $# -ne 0 ]; then
    if [ -n "${GOROOT+x}" ]; then
      removeFromPath $GOROOT
    fi
    export GOROOT=$@
    echo $GOROOT
    export PATH=$GOROOT/bin:$PATH
    echo $PATH
  else
    echo "Usage: setgo $<valid_goroot_env_variable>"
    echo "  e.g. \"setgo \$go_latest\""
    echo "  Important: don't omit the $ before the variable name!"
  fi
}

