(* 
module TestSplice1 = {
  module DNA = {
    let any_base = $regex `(A|T|G|C)`
  };
  let bisA = $regex `(GC$(DNA.any_base)GC)`;
};
*)
module TestSplice1 = struct
  module DNA = struct
    let any_base = 
      raise (RegexNotation.RelitInternalDefn_regex.Call 
        { err_msg = "Forgot ppx..."; 
          body = "A|T|G|C" } )
  end
  let bisA = raise RegexNotation.RelitInternalDefn_regex.Call
    { err_msg = "Forgot ppx..."; 
      body = "A|T|G|C" }
end