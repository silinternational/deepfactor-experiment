package main

import (
	"fmt"

	"github.com/kelseyhightower/envconfig"
)

var Env struct {
	MyVariable string `split_words:"true"`
}

func main() {
	err := envconfig.Process("", &Env)
	if err != nil {
		panic("error loading env vars: " + err.Error())
	}

	fmt.Println("Hello, world")

	fmt.Printf("MyVariable = %q\n", Env.MyVariable)
}
