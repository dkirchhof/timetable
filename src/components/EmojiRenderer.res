type props = {emoji: Emoji.t}

let container = Emotion.css`
  font-family: Noto Emoji;
`

let make = props => <div class=container> {Voby.JSX.string(props.emoji)} </div>
