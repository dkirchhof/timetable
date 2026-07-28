type props = {
  stage: Stage.t,
  band: Band.t,
  ratings: Voby.Observable.t<Ratings.t>,
  emojiFilter: Voby.Observable.t<EmojiFilter.t>,
}

let container = Emotion.css`
  grid-area: 1/1;
  translate: calc((var(--start) - var(--timetable-offset)) * var(--cell-width)) 0;
  width: calc((var(--end) - var(--start)) * var(--cell-width));

  background: var(--accent-color);
  box-shadow: 0 0 1rem 0 rgba(0,0,0,.1);

  > button {
    display: grid;
    justify-content: center;
    align-items: center;
    align-content: center;
    gap: 0.5rem;

    width: 100%;
    height: 100%;
    padding: 0.75rem 1rem;

    background: none;
    border: none;

    font: inherit;
  }
`

let filteredOut = Emotion.css`
  opacity: 0.25;
`

let name = Emotion.css`
  // white-space: nowrap;
  // overflow: hidden;
  // text-overflow: ellipsis;
`

let meta = Emotion.css`
  overflow: hidden;

  > div {
    overflow: hidden;

    font-size: 0.75rem;
    white-space: nowrap;
    text-overflow: ellipsis;
  }
`

let emojiContainer = Emotion.css`
  display: flex;
  align-items: center;
  justify-content: center;

  position: absolute;
  top: -1rem;
  right: -1rem;
  width: 2rem;
  height: 2rem;

  background: var(--accent-color-bright);
  border: 1px solid var(--accent-color);
  border-radius: 50%;
  box-shadow: 0 0 1rem 0 rgba(0, 0, 0, .1);
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
        onClick={_ =>
          State.showEmojiPicker(emoji =>
            Voby.Observable.update(
              props.ratings,
              ratings => Ratings.setRating(ratings, props.band.id, emoji),
            )
          )}
      >
        <div class=name> {Voby.JSX.string(props.band.name)} </div>
        <div class=meta>
          <div> {Voby.JSX.string(timeStr)} </div>
          <div> {Voby.JSX.string(props.stage.name)} </div>
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
