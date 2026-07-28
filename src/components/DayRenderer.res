type props = {
  festival: Festival.t,
  day: Day.t,
  ratings: Voby.Observable.t<Ratings.t>,
  emojiFilter: Voby.Observable.t<EmojiFilter.t>,
}

let container = Emotion.css`
  overflow-x: auto;

  display: grid;

  > div {
    display: grid;
    grid-template-columns: subgrid;
  }
`

let hours = Emotion.css`
  list-style: none;

  grid-column: 2 / 3;
  margin: 0;
  padding: 0;

  display: grid;
  grid-auto-flow: column;
  grid-auto-columns: var(--cell-width);
`

let stages = Emotion.css`
  list-style: none;

  display: grid;
  grid-template-columns: subgrid;

  grid-column: 1 / 3;
  margin: 0;
  padding: 0;
`

let make = props => {
  let delta = props.festival.end.h - props.festival.start.h + 1

  let range = Array.fromInitializer(~length=delta, i => {
    Time.h: props.festival.start.h + i,
    Time.m: 0,
  })

  <div class=container>
    <ul class=hours>
      {range
      ->Array.map(time => <li> {time->Time.toString->Voby.JSX.string} </li>)
      ->Voby.JSX.array}
    </ul>
    <ul class=stages>
      {props.day.stages
      ->Array.map(stage =>
        <StageRenderer stage ratings=props.ratings emojiFilter=props.emojiFilter />
      )
      ->Voby.JSX.array}
    </ul>
  </div>
}
