all: base elixir go

base:
	docker build -t operable/alpine-base:0.2 . -f Dockerfile.alpine-base

elixir:
	docker build -t operable/elixir:1.3.1-r2 . -f Dockerfile.elixir

go:
	docker build -t operable/go:1.6.3-r1 . -f Dockerfile.go
