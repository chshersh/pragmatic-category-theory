(** Semigroup type signature *)
module type S = sig
  type t
  val append : t -> t -> t
end

(* Basic instances *)

module IntAdd  : S with type t = int
module IntMul  : S with type t = int
module BoolAnd : S with type t = bool
module BoolOr  : S with type t = bool
module String  : S with type t = string
