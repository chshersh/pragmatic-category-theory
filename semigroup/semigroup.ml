module type S = sig
  type t

  val append : t -> t -> t
end

module IntAdd = struct
  type t = int

  let append = ( + )
end

module IntMul = struct
  type t = int

  let append = ( * )
end

module BoolAnd = struct
  type t = bool

  let append = ( && )
end

module BoolOr = struct
  type t = bool

  let append = ( || )
end

module String = struct
  type t = string

  let append = ( ^ )
end

module Min(C : Map.OrderedType) = struct
  type t = C.t

  let append x y = if C.compare x y <= 0 then x else y
end

module Max(C : Map.OrderedType) = struct
  type t = C.t

  let append x y = if C.compare x y >= 0 then x else y
end

module First(T : sig type t end) = struct
  type t = T.t

  let append x _ = x
end

module Last(T : sig type t end) = struct
  type t = T.t

  let append _ y = y
end

module List(T : sig type t end) = struct
  type t = T.t list

  let append = ( @ )
end

module Pair(S1: S) (S2: S) = struct
  type t = S1.t * S2.t

  let append (a1, b1) (a2, b2) = (S1.append a1 a2, S2.append b1 b2)
end
