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
export GOPATH=/opt/go/inner-text-searcher/damerau-levenshtein-distance
cd damerau-levenshtein-distance 
go install -v -gcflags "-N -l" ./...
cd ..
export GOPATH=/opt/go/inner-text-searcher/needleman-wunsch-distance
cd needleman-wunsch-distance
go install -v -gcflags "-N -l" ./...
cd ..
export GOPATH=/opt/go/inner-text-searcher/smith-waterman-distance
cd smith-waterman-distance
go install -v -gcflags "-N -l" ./...
cd ..
export GOPATH=/opt/go/inner-text-searcher/optimal-sring-alignment-distance
cd optimal-sring-alignment-distance
go install -v -gcflags "-N -l" ./...
cd ..
