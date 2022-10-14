open Eio

module Me : sig
  val get : string -> Net.t -> string
end
