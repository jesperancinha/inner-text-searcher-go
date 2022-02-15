coverage:
	cd string-distance && source setup.sh && go get -t -v github.com/stretchr/testify/assert
	cd string-distance && source setup.sh && go test -coverprofile=../coverage.out
