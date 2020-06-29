images = development python3 python2 golang rust

.PHONY: all $(images) app misc
all: $(images)

$(images):
	@echo
	@echo Building $@ image...
	@echo
	cd $@ && docker build --force-rm -t jdost-den/$@ --label den .
	@echo

# This is a local support for the `app` folder
app:
	@echo
	@echo Building the application image: $(tgt)...
	@echo
	cd apps/ && docker build --force-rm -t jdost/app:$(tgt) --file $(tgt).Dockerfile .
	@echo

add-app: app
	@echo
	@echo Adding support for $(tgt) to user...
	@bash ./apps/add.sh $(tgt)
	@echo

# This is a local support for the `misc` folder
misc:
	@echo
	@echo Building $(tgt) image from misc...
	@echo
	cd misc/ && docker build --force-rm -t jdost-misc/$(tgt) --file $(tgt).Dockerfile .
	@echo

.PHONY: clean
clean:
	docker images | grep "<none>" | awk '{ print $$3 }' | xargs docker rmi
