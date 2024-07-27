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
