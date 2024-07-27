# Pragmatic Category Theory

Pragmatic Category Theory for Beginners in OCaml with lots of real-world examples

## Development

Initialise the project when building for the first time:

```
opam switch create .
opam install --deps-only --with-test .
```

Build the project:

```
dune build
```

Run tests:

```
dune runtest
```

Install dev dependencies:

```
opam install utop ocamlformat ocaml-lsp-server dune
