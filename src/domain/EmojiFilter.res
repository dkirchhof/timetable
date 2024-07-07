type t = Dict.t<bool>

let make = () => Emoji.all->Array.map(emoji => (emoji, true))->Dict.fromArray

let getEmoji = (filter, emoji: Emoji.t) => {
  Dict.getUnsafe(filter, emoji)
}

let setEmoji = (filter, emoji, value) => {
  let copy = Dict.copy(filter)

  Dict.set(copy, emoji, value)

  copy
}
