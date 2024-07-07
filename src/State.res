// config
let festival = %raw(`
  location.search.match(/\?festival=([\w-]+)/)?.[1]
`)

let config = Dict.getUnsafe(Config.festivals, festival)
let data = Persistent.loadData(festival)

// ratings
let ratings = Voby.Observable.make(data.ratings)

let setRating = (bandId, emoji) => {
  Voby.Observable.update(ratings, r => {
    Ratings.setRating(r, bandId, emoji)
  })
}

// selected day
let selectedDay = Voby.Observable.make(data.filter.day)

let setDay = (day: int) => {
  Voby.Observable.update(selectedDay, _ => day)
}

// emoji filter
let emojiFilter = Voby.Observable.make(data.filter.emojis)

let setEmojiFilter = filter => {
  Voby.Observable.update(emojiFilter, _ => filter)
}

// emoji picker
let emojiPicker: Voby.Observable.t<option<string>> = Voby.Observable.make(None)

let closeEmojiPicker = () => Voby.Observable.update(emojiPicker, _ => None)
let showEmojiPicker = id => Voby.Observable.update(emojiPicker, _ => Some(id))

// track state and save it
Oby.effect(() => {
  Persistent.saveData(
    festival,
    {
      filter: {
        day: Voby.Observable.getValue(selectedDay),
        emojis: Voby.Observable.getValue(emojiFilter),
      },
      ratings: Voby.Observable.getValue(ratings),
    },
  )
})
