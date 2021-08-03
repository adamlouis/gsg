package main

import (
	"log"

	"github.com/adamlouis/gsg/internal/gen"
)

func main() {
	if err := gen.Gen(); err != nil {
		log.Fatal(err)
	}
}
