// rating picker
let ratingPicker: Voby.Observable.t<option<Rating.t => unit>> = Voby.Observable.make(None)

let closeRatingPicker = () => Voby.Observable.update(ratingPicker, _ => None)
let showRatingPicker = id => Voby.Observable.update(ratingPicker, _ => Some(id))

// track state and save it
// Oby.effect(() => {
//   Persistent.saveData(
//     festival,
//     {
//       filter: {
//         day: Voby.Observable.getValue(selectedDay),
//         ratings: Voby.Observable.getValue(ratingFilter),
//       },
//       ratings: Voby.Observable.getValue(ratings),
//     },
//   )
// })
