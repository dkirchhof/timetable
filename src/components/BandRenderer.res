type props = {
  band: Band.t,
  ratings: Voby.Observable.t<Ratings.t>,
  emojiFilter: Voby.Observable.t<EmojiFilter.t>,
}

let container = Emotion.css`
  grid-area: 1/1;
  translate: 0 calc((var(--start) - var(--timetable-offset)) * var(--cell-height));
  height: calc((var(--end) - var(--start)) * var(--cell-height));

  background: var(--accent-color);
  box-shadow: 0 0 1rem 0 rgba(0,0,0,.1);

  > button {
    display: grid;
    grid-template-columns: 1fr 3rem;
    align-items: stretch;

    width: 100%;
    height: 100%;
    padding: 0;

    background: none;
    border: none;

    font: inherit;
    text-align: left;
  }
`

let filteredOut = Emotion.css`
  opacity: 0.25;
`

let text = Emotion.css`
  display: flex;
  flex-direction: column;
  justify-content: center;
  gap: 0.25rem;

  overflow: hidden;

  padding: 0 0.75rem;

  white-space: nowrap;
`

let time = Emotion.css`
  font-size: 0.75rem;
`

let name = Emotion.css`
  overflow: hidden;

  text-overflow: ellipsis;
`

let emojiContainer = Emotion.css`
  display: flex;
  align-items: center;
  justify-content: center;

  border-left: 1px solid hsl(from var(--accent-color) h s calc(l * 0.8));

  font-size: 1.5rem;
`

let make = props => {
  let timeStr = [Time.toString(props.band.start), Time.toString(props.band.end)]->Array.join(" - ")

  Voby.Observable.bind2(props.ratings, props.emojiFilter, (ratings, filter) => {
    let emoji = Ratings.getRating(ratings, props.band.id)

    let selected = switch emoji {
    | Some(emoji) => filter->EmojiFilter.getEmoji(emoji)
    | None => true
    }

    let class = `${container} ${selected ? "" : filteredOut}`

    let style = Obj.magic(
      `
      --start: ${props.band.start->Time.toFloat->Float.toString};
      --end: ${props.band.end->Time.toFloat->Float.toString};
    `,
    )

    <li class style>
      <button
        popoverTarget={props.band.id}
        onClick={_ =>
          State.showEmojiPicker(emoji =>
            Voby.Observable.update(
              props.ratings,
              ratings => Ratings.setRating(ratings, props.band.id, emoji),
            )
          )}>
        <div class=text>
          <div class=time> {Voby.JSX.string(timeStr)} </div>
          <div class=name> {Voby.JSX.string(props.band.name)} </div>
        </div>
        <div class=emojiContainer>
          {switch emoji {
          | Some(emoji) => <EmojiRenderer emoji />
          | None => Voby.JSX.null
          }}
        </div>
      </button>
    </li>
  })
}
