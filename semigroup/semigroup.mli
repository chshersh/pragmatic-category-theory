(** Semigroup type signature *)
module type S = sig
  type t
  val append : t -> t -> t
end

(* Basic monomorphic instances *)

module IntAdd  : S with type t = int
module IntMul  : S with type t = int
module BoolAnd : S with type t = bool
module BoolOr  : S with type t = bool
module String  : S with type t = string

(* Basic polymorphic instances *)

module Min   : functor (C : Map.OrderedType) -> S with type t = C.t
module Max   : functor (C : Map.OrderedType) -> S with type t = C.t
module First : functor (T: sig type t end)   -> S with type t = T.t
module Last  : functor (T: sig type t end)   -> S with type t = T.t
module List  : functor (T: sig type t end)   -> S with type t = T.t list
