all: base elixir go elixir-debian ruby

base:
	docker build -t operable/alpine-base:0.3 . -f Dockerfile.alpine-base

elixir:
	docker build -t operable/elixir:1.3.4-r0 . -f Dockerfile.elixir

go:
	docker build -t operable/go:1.6.3-r1 . -f Dockerfile.go

elixir-debian:
	docker build -t operable/elixir-debian:1.3.4-r0 . -f Dockerfile.elixir-debian

ruby:
	docker build -t operable/ruby:2.3.1-r0  . -f Dockerfile.ruby
