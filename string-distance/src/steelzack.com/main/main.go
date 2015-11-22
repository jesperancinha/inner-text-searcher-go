package main

import (
	"github.com/steelzack/string.distance/algorithms"
	"log"
)

func main() {
	optaln := new(algorithms.OptAli)
	log.Println(optaln.CalculateDistance("SimpleTest", "SimplTest"))
	
	optaln = new(algorithms.OptAli)
	log.Println(optaln.CalculateDistance("ATCGT", "TGGTG"))

	optaln = new(algorithms.OptAli)
	log.Println(optaln.CalculateDistance("GACTTAC", "CGTGAATTCAT"))

	damleu := new(algorithms.DamLev)
	log.Println(damleu.CalculateDistanceWithAlphabet("SimpleTest", "SimplTest", 20))
	
	damleu = new(algorithms.DamLev)
	log.Println(damleu.CalculateDistanceWithAlphabet("ATCGT", "TGGTG", 20))

	//gap, missmatchscore, exactscore
	
	neewun := algorithms.NewNeeWun(-2, 1, 1)
	log.Println(neewun.CalculateDistance("ATCGT", "TGGTG"))

	smiwat := algorithms.NewSmiWat(-4, 3, 5)
	log.Println(smiwat.CalculateDistance("GACTTAC", "CGTGAATTCAT"))

}
