open Regex_example

module DNA = struct
  open RegexNotation
  module Regex = struct end (* should not matter *)
  let any_base =
  raise (RelitInternalDefn_regex.Call ("Forgot ppx...", "a|b|c") [@relit])
end
let () = print_endline (Regex.show DNA.any_base)

