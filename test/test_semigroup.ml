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

let tests =
  [
    ("test_int_add", `Quick, test_int_add);
    ("test_int_mul", `Quick, test_int_mul);
    ("test_bool_and", `Quick, test_bool_and);
    ("test_bool_or", `Quick, test_bool_or);
    ("test_string", `Quick, test_string);
  ]
