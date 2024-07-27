(lang dune 3.15)

(name semigroup)

(source
 (github chshersh/pragmatic-category-theory))

(authors "Dmitrii Kovanikov")

(license MIT)

(generate_opam_files true)

(package
 (name semigroup)
  (depends
    (ocaml
     (>= 4.08))
  (alcotest
   (and
    :with-test
    (>= 1.3.0)))
 )
)
