images = development python3 python2 golang haskell nodejs

.PHONY: all $(images)
all: development python3 python2 golang

$(images):
	@echo
	@echo Builder $@ image...
	@echo
	cd $@ && docker build -t $@ --label den .
	@echo

.PHONY: clean
clean:
	docker images | grep "<none>" | awk '{ print $$3 }' | xargs docker rmi
