# Pragmatic Category Theory

Pragmatic Category Theory for Beginners in OCaml with lots of real-world examples. It's a series of text articles and videos. This repository contains code that powers the content.

> [!IMPORTANT]
> The series is currently in progress.

| Part | Article | Video |
| ---- | ------- | ----- |
| Part 1: Semigroup Intro | [Article][article-1] | - |
| Part 2: Composing Semigroups | [Article][article-2] | - |
| Part 3: Associativity | [Article][article-3] | - |

[article-1]: https://chshersh.com/blog/2024-07-30-pragmatic-category-theory-part-01.html
[article-2]: https://chshersh.com/blog/2024-08-19-pragmatic-category-theory-part-02.html
[article-3]: https://chshersh.com/blog/2024-12-20-pragmatic-category-theory-part-03.html

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
