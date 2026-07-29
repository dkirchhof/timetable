let backdrop = Emotion.css`
  position: fixed;
  inset: 0;
  z-index: 2000;

  display: flex;
  justify-content: center;
  align-items: center;

  background: rgb(0 0 0 / 30%);
`

let container = Emotion.css`
  border-radius: 0.25rem;

  > li > button {
    width: 4rem;
    height: 3rem;
  }
`

@jsx.component
let make = () =>
  Voby.Observable.bind(State.ratingPicker, cb =>
    switch cb {
    | Some(cb) =>
      <div class=backdrop onClick={_ => State.closeRatingPicker()}>
        <ul class={`${SelectorStyles.container} ${container}`}>
          {Rating.all
          ->Array.map(rating =>
            <li>
              <button onClick={_ => cb(rating)}>
                <RatingRenderer rating />
              </button>
            </li>
          )
          ->Voby.JSX.array}
        </ul>
      </div>
    | None => Voby.JSX.null
    }
  )
