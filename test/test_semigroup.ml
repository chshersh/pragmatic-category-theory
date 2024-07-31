open Semigroup

let test_int_add () = Alcotest.(check int) "IntAdd" 5 (IntAdd.append 2 3)
let test_int_mul () = Alcotest.(check int) "IntMul" 6 (IntMul.append 2 3)

let test_bool_and () =
  Alcotest.(check bool) "BoolAnd" false (BoolAnd.append true false)

let test_bool_or () =
  Alcotest.(check bool) "BoolOr" true (BoolOr.append true false)

let test_string () =
  Alcotest.(check string)
    "String" "Hello, World!"
    (String.append "Hello, " "World!")

let test_first () =
  let module FirstInt = First (Int) in
  Alcotest.(check int) "First::Int" 2 (FirstInt.append 2 3)

let test_last () =
  let module LastInt = Last (Int) in
  Alcotest.(check int) "Last::Int" 3 (LastInt.append 2 3)

let test_min () =
  let module MinInt = Min (Int) in
  Alcotest.(check int) "Min::Int" 2 (MinInt.append 3 2)

let test_max () =
  let module MaxInt = Max (Int) in
  Alcotest.(check int) "Max::Int" 3 (MaxInt.append 3 2)

let test_list () =
  let module ListInt = List (Int) in
  Alcotest.(check (list int))
    "List::Int" [ 0; 1; 2; 4; 5; 6 ]
    (ListInt.append [ 0; 1; 2 ] [ 4; 5; 6 ])

let tests =
  [
    ("test_int_add", `Quick, test_int_add);
    ("test_int_mul", `Quick, test_int_mul);
    ("test_bool_and", `Quick, test_bool_and);
    ("test_bool_or", `Quick, test_bool_or);
    ("test_string", `Quick, test_string);
    ("test_min", `Quick, test_min);
    ("test_max", `Quick, test_max);
    ("test_first", `Quick, test_first);
    ("test_last", `Quick, test_last);
    ("test_list", `Quick, test_last);
  ]
