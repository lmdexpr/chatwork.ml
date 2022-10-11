(lang dune 3.0)

(name chatwork)

(generate_opam_files true)

(source
 (github lmdexpr/chatwork.ml))

(authors "Yuki Tajiri")

(maintainers "Yuki Tajiri <lmdexpr@gmail.com>")

(license MIT)

(package
 (name chatwork)
 (synopsis "Chatwork API binding")
 (depends
   (ocaml (>= 5.0.0))
   ocaml-lsp-server
   ocamlformat
   dune
   eio_main))
