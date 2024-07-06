let backdrop = Emotion.css`
  position: absolute;
  inset: 0;

  display: flex;
  justify-content: center;
  align-items: center;

  background: rgb(0 0 0 / 30%);
`

let container = Emotion.css`
  list-style: none;

  display: flex;

  margin: 0;
  padding: 1rem;

  background: white;
  border-radius: 10rem;

  > li > button {
    background: none;
    border: none;
  }
`

@jsx.component
let make = () =>
  Voby.Observable.bind(State.emojiPicker, bandId =>
    switch bandId {
    | Some(bandId) =>
      <div class=backdrop>
        <ul class=container>
          {Emoji.all
          ->Array.map(emoji =>
            <li>
              <button>
                <EmojiRenderer emoji />
              </button>
            </li>
          )
          ->Voby.JSX.array}
        </ul>
      </div>
    | None => Voby.JSX.null
    }
  )
