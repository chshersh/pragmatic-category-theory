let () =
  Alcotest.run "Pragmatic Category Theory Tests"
    [ ("Semigroup", Test_semigroup.tests) ]
