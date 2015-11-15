echo ---- Creating system variables...
export GOROOT=/usr/lib/go
export GOPATH=/opt/go/inner-text-searcher/string-distance
export PATH=$PATH:$GOPATH:$GOROOT/bin
go env

echo ---- Loading commong libraries
go get "github.com/steelzack/string.distance"
echo ---- Finished loading string.distance
