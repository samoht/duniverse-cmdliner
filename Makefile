all:
	dune test

opam-deps:
	rm -rf duniverse
	opam switch create . --no-install
	opam install dune cmdliner

duniverse-deps:
	duniverse init && duniverse pull
