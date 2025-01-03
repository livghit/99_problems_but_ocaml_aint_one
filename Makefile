build:
	opam exec -- dune build

run:
	opam exec -- dune exec problems_but_ocaml_aint_one

dev:
	@opam exec -- dune build 
	@opam exec -- dune exec problems_but_ocaml_aint_one 
