type t = Dict.t<bool>

let make = () => Emoji.all->Array.map(emoji => ((emoji :> string), true))->Dict.fromArray

let getEmoji = (filter, emoji: Emoji.t) => {
  Dict.getUnsafe(filter, (emoji :> string))
}

let setEmoji = (filter, emoji, value) => {
  let copy = Dict.copy(filter)

  Dict.set(copy, (emoji :> string), value)

  copy
}
