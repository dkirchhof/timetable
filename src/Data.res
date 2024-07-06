type t = Dict.t<Emoji.t>

let load = (): t => Dict.make()

let get = (data, id) => {
  Dict.get(data, id)
}

let set = (data, id, value) => {
  let copy = Dict.copy(data)

  Dict.set(copy, id, value)

  copy
}
