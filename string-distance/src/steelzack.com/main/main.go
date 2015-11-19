package main

import (
	"github.com/steelzack/string.distance/algorithms"
	"log"
)

func main() {
	optaln := new(algorithms.OptAli)
	log.Println(optaln.CalculateDistance("SimpleTest", "SimplTest"))
	damleu := new(algorithms.DamLev)
	log.Println(damleu.CalculateDistanceWithAlphabet("SimpleTest", "SimplTest", 20))
	neewun := algorithms.NewNeeWun(-2, 1,1)
	log.Println(neewun.CalculateDistance("ATCGT", "TGGTG"))
	log.Println(neewun.CalculateDistance("DIMI", "DAMI"))

}
