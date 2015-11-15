echo ---- Creating system variables...
export GOROOT=/usr/lib/go
export GOPATH=/opt/go/inner-text-searcher/lib
export PATH=$PATH:$GOPATH:$GOROOT/bin
go env

echo ---- Loading commong libraries
go get "github.com/stretchr/testify/assert"
echo -------- Loaded github.com/stretchr/testify/assert
go get "github.com/stretchr/objx"
echo -------- Loaded github.com/stretchr/objx

echo ---- Creating pkg builds
cd string-distance 
go install -v -gcflags "-N -l" ./...
cd ..
