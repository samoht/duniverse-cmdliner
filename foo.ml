open Cmdliner

let run _ = ()

let x = Arg.(value & opt string "$(mname)" & info ["arg"])

let t = Term.(const run $ x)

let () = Term.exit @@ Term.eval (t, Term.info "foo")
