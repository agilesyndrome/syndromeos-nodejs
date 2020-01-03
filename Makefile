docker:
	docker build --build-arg nodeVersion=$(NODE_VERSION) -t agilesyndrome/$(SYNDROME_PROJECT):$(NODE_VERSION) .

build: docker

clean:
	rm -rf built
	mkdir -p built

publish: clean
	docker push agilesyndrome/$(SYNDROME_PROJECT):$(NODE_VERSION)	
