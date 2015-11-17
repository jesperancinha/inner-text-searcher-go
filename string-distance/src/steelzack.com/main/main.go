package main

import (
	"fmt"
	"github.com/steelzack/string.distance/algorithms"
)

func main() {
	optaln := new(distances.OptAli)
	fmt.Println(optaln.CalculateDistance("SimpleTest","SimpTest"))
}
