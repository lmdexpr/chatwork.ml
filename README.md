# chatwork.ml
Chatwork API on OCaml

## test
```ocaml
#require "chatwork";;
#require "eio_main";;

let token = (* fill in your token*);;

Eio_main.run @@ fun env ->
  Chatwork.Me.get token (Eio.Stdenv.net env)
  |> Eio.traceln "Recieved : %s"
;;
```
