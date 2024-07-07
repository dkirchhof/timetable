type props = {emojiFilter: Voby.Observable.t<EmojiFilter.t>}

let make = props => {
  <ul class=SelectorStyles.container>
    {Voby.Observable.bind(props.emojiFilter, filter => {
      filter
      ->Dict.toArray
      ->Array.map(((emoji, selected)) =>
        <li>
          <button
            ariaSelected={selected}
            onClick={_ =>
              Voby.Observable.update(
                props.emojiFilter,
                current => EmojiFilter.setEmoji(current, emoji, !selected),
              )}>
            <EmojiRenderer emoji />
          </button>
        </li>
      )
      ->Voby.JSX.array
    })}
  </ul>
}
