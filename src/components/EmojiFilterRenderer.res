@jsx.component
let make = () => {
  <ul class=SelectorStyles.container>
    {Voby.Observable.bind(State.emojiFilter, filter => {
      filter
      ->Dict.toArray
      ->Array.map(((emoji, selected)) =>
        <li>
          <button
            ariaSelected={selected}
            onClick={_ => filter->EmojiFilter.setEmoji(emoji, !selected)->State.setEmojiFilter}>
            <EmojiRenderer emoji={Emoji.fromString(emoji)} />
          </button>
        </li>
      )
      ->Voby.JSX.array
    })}
  </ul>
}
