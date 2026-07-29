type t = Map.t<Rating.t, bool>

let make = () => Rating.all->Array.map(rating => (rating, true))->Map.fromArray

let getRating = (filter, rating: Rating.t) => {
  Map.get(filter, rating)->Option.getOr(true)
}

let setRating = (filter, rating, value) => {
  let copy = filter->Map.entries->Map.fromIterator

  Map.set(copy, rating, value)

  copy
}
