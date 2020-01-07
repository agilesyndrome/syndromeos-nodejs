ci:
	docker build --build-arg nodeVersion=$(NODE_VERSION) -t docker.pkg.github.com/agilesyndrome/syndromeos-nodejs/node:$(NODE_VERSION) .
	docker push docker.pkg.github.com/agilesyndrome/syndromeos-nodejs/node:$(NODE_VERSION)
