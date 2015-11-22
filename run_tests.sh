echo ---- Creating system variables...
export GOROOT=/usr/lib/go
export GOPATH=/opt/go/inner-text-searcher/lib:/opt/go/inner-text-searcher/string-distance
export PATH=$PATH:$GOPATH:$GOROOT/bin
go env

echo ---- Loading commong libraries
go get "github.com/stretchr/testify/assert"
echo -------- Loaded github.com/stretchr/testify/assert

echo ---- Running tests
cd string-distance
go test -v ./... -tags "steelzackstringdistance" 
cd ..
