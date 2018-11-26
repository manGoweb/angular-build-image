ORG = mangoweb
REPO = angular-build-image
TAG = 7.0

all: build publish

build: Dockerfile
	docker build -t $(REPO):$(TAG) .

publish: Dockerfile
	docker tag $(REPO):$(TAG) $(ORG)/$(REPO):$(TAG)
	docker push $(ORG)/$(REPO):$(TAG)
