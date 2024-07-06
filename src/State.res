// data
let data = Voby.Observable.make(Data.load())

let setEmoji = (id, emoji) => {
  Voby.Observable.update(data, d => Data.set(d, id, emoji))
}

// selected day
let selectedDay = Voby.Observable.make(Config.days->Array.getUnsafe(0))

let setDay = (day: Day.t) => {
  Voby.Observable.update(selectedDay, _ => day)
}

// emoji filter
let emojiFilter = EmojiFilter.make()->Voby.Observable.make

let setEmojiFilter = filter => {
  Voby.Observable.update(emojiFilter, _ => filter)
}

// emoji picker
let emojiPicker: Voby.Observable.t<option<string>> = Voby.Observable.make(None)

let closeEmojiPicker = () => Voby.Observable.update(emojiPicker, _ => None)
let showEmojiPicker = id => Voby.Observable.update(emojiPicker, _ => Some(id))
