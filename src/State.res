let data = Voby.Observable.make(Data.load())

let setEmoji = (id, emoji) => {
  Voby.Observable.update(data, d => Data.set(d, id, emoji))
}

let selectedDay = Voby.Observable.make(Config.days->Array.getUnsafe(0))

let setDay = (day: Day.t) => {
  Voby.Observable.update(selectedDay, _ => day)
}

let emojiPicker: Voby.Observable.t<option<string>> = Voby.Observable.make(None)

let showEmojiPicker = id => Voby.Observable.update(emojiPicker, _ => Some(id))
