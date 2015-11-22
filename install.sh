echo ---- Creating system variables...
export GOROOT=/usr/lib/go
export GOPATH=/opt/go/inner-text-searcher/lib
export PATH=$PATH:$GOPATH:$GOROOT/bin
go env

echo ---- Loading commong libraries
go get "github.com/steelzack/string.distance"
go get "github.com/stretchr/testify"
