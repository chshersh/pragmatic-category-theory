# Pragmatic Category Theory

Pragmatic Category Theory for Beginners in OCaml with lots of real-world examples. It's a series of text articles and videos. This repository contains code that powers the content.

> [!IMPORTANT]
> The series is currently in progress.

| Part | Article | Video |
| ---- | ------- | ----- |
| Part 1: Semigroup Intro | [Article][article-1] | - |

[article-1]: https://dev.to/chshersh/pragmatic-category-theory-part-1-semigroup-intro-1ign

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
