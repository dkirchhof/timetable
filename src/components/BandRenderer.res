type props = {band: Band.t}

let container = Emotion.css`
  grid-area: 1/1;
  translate: 0 calc((var(--start) - ${Float.toString(Config.start)}) * var(--cell-height));
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

  padding: 0 0.75rem;
`

let time = Emotion.css`
  font-size: 0.75rem;
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

  Voby.Observable.bind2(State.data, State.emojiFilter, (data, filter) => {
    let emoji = data->Data.get(props.band.id)

    let selected = switch emoji {
    | Some(emoji) => filter->EmojiFilter.getEmoji(emoji)
    | None => true
    }

    let class = `${container} ${selected ? "" : filteredOut}`

    let style = Obj.magic(
      ` --start: ${Float.toString(props.band.start)}; --end: ${Float.toString(props.band.end)};`
    )

    <li class style>
      <button popoverTarget={props.band.id} onClick={_ => State.showEmojiPicker(props.band.id)}>
        <div class=text>
          <div class=time> {Voby.JSX.string(timeStr)} </div>
          <div> {Voby.JSX.string(props.band.name)} </div>
        </div>
        <div class=emojiContainer>
          {Voby.Observable.bind(State.data, data => {
            let emoji = data->Data.get(props.band.id)

            switch emoji {
            | Some(emoji) => <EmojiRenderer emoji />
            | None => Voby.JSX.null
            }
          })}
        </div>
      </button>
    </li>
  })
}
