.PHONY: build start

build:
	@docker build -t ypereirareis/symfony-deprecation-detector .

start:
	@docker run -it --rm  -v `pwd`:/app ypereirareis/symfony-deprecation-detector