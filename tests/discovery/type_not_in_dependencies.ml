open Regex_notation

open AbsurdTLM
let x = "hi there"
type fake_type = int
let square =
  raise (RelitInternalDefn_absurd_int_arrow_int.Call ("Forgot ppx...", "badly_typed_fn") [@relit])
let () = print_int (square 5)
