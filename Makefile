build:
	@docker image build --tag e53e225/plantuml:latest .

clean:
	@docker image rm e53e225/plantuml:latest

.PHONY: build clean
