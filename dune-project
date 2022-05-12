(lang dune 3.0)

(name OCamlwork)

(generate_opam_files true)

(source
 (github lmdexpr/OCamlwork))

(authors "Yuki Tajiri")

(maintainers "Yuki Tajiri <lmdexpr@gmail.com>")

(license MIT)

(package
 (name OCamlwork)
 (synopsis "Chatwork API binding")
 (depends (ocaml (>= 4.14.0)) ocaml-lsp-server ocamlformat ocamlformat-rpc dune))
