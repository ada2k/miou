open Miou

let prgm () =
  Miou.run @@ fun () ->
  let p = Prm.call (Fun.const ()) in
  Prm.await_exn p; Prm.cancel p; Prm.await_exn p

let () =
  for _ = 0 to 100 do
    prgm ()
  done
