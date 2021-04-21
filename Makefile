.PHONY: build
build: $(wildcard src/*)
	mkdir -p build/
	cd src/ && zip -r ../build/floating-top-bar@jacob-w-gable.me.zip .

.PHONY: clean
clean:
	rm -rf build/
