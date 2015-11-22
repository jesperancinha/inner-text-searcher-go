echo ---- Creating system variables...
export GOROOT=/usr/lib/go
export PATH=$PATH:$GOPATH:$GOROOT/bin
go env

export GOPATH=/opt/go/inner-text-searcher/string-distance
echo ---- Loading commong libraries
go get "github.com/steelzack/string.distance"
echo ---- Finished loading string.distance

export GOPATH=/opt/go/inner-text-searcher/lib
go get "github.com/stretchr/testify/assert"
echo ---- Finished loading testify/assert
