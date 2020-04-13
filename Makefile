TAG=neonfuz/catan

run: build_id
	docker run -it --rm -v $(PWD):/app -p 3000:3000 `cat build_id`

build_id: package.json yarn.lock Dockerfile
	docker build --iidfile ./build_id . -t $(TAG)

.PHONY: run
