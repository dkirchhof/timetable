// emoji picker
let emojiPicker: Voby.Observable.t<option<string => unit>> = Voby.Observable.make(None)

let closeEmojiPicker = () => Voby.Observable.update(emojiPicker, _ => None)
let showEmojiPicker = id => Voby.Observable.update(emojiPicker, _ => Some(id))

// track state and save it
// Oby.effect(() => {
//   Persistent.saveData(
//     festival,
//     {
//       filter: {
//         day: Voby.Observable.getValue(selectedDay),
//         emojis: Voby.Observable.getValue(emojiFilter),
//       },
//       ratings: Voby.Observable.getValue(ratings),
//     },
//   )
// })
