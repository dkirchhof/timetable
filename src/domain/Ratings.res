type t = Dict.t<string>

let make = (): t => Dict.make()

let getRating = (ratings, id) => {
  Dict.get(ratings, id)
}

let setRating = (ratings, id, value) => {
  let copy = Dict.copy(ratings)

  Dict.set(copy, id, value)

  copy
}
