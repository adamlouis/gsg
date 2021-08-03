
clean:
	rm -f ./bin/*
	rm -f ./example/*/*
	go mod tidy

build: clean
	go build -o ./bin/gsg main.go

example: build example-model example-server example-client

example-model:
	./bin/gsg --component model --config ./example/api.yml --package examplemodel --out ./example/examplemodel/examplemodel.gen.go

example-server:
	./bin/gsg --component server --config ./example/api.yml --package exampleserver --out-dir ./example/exampleserver/ --out ./example/exampleserver/exampleserver.gen.go --model-package github.com/adamlouis/gsg/example/exampleserver

example-client:
	./bin/gsg --component client --config ./example/api.yml --package exampleclient --out ./example/exampleclient/exampleclient.gen.go --model-package github.com/adamlouis/gsg/example/exampleclient
