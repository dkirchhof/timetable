type props = {emoji: Emoji.t}

let container = Emotion.css`
  padding-top: 0.25rem;

  font-family: Noto Emoji;
  font-size: 1.5rem;
`

let make = props => <div class=container> {Voby.JSX.string((props.emoji :> string))} </div>
