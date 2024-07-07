type props = {
  festival: Festival.t,
  day: Day.t,
  ratings: Voby.Observable.t<Ratings.t>,
  emojiFilter: Voby.Observable.t<EmojiFilter.t>,
}

let container = Emotion.css`
  display: grid;
  grid-template-columns: auto 1fr;
  gap: 1rem;
`

let stages = Emotion.css`
  display: grid;
  grid-auto-flow: column;

  overflow-x: auto;

  > * {
    min-width: 60vw;
  }
`

let list = Emotion.css`
  list-style: none;

  margin: 0;
  padding: calc(var(--stage-name-height) - 0.75ex) 0 0 0;

  > li {
    height: var(--cell-height);
  }
`

let make = props => {
  let delta = props.festival.end.h - props.festival.start.h + 1

  let range = Array.fromInitializer(~length=delta, i => {
    Time.h: props.festival.start.h + i,
    Time.m: 0,
  })

  <div class=container>
    <div>
      <ul class=list>
        {range
        ->Array.map(r => <li> {r->Time.toString->Voby.JSX.string} </li>)
        ->Voby.JSX.array}
      </ul>
    </div>
    <div class=stages>
      {props.day.stages
      ->Array.map(stage =>
        <StageRenderer stage ratings=props.ratings emojiFilter=props.emojiFilter />
      )
      ->Voby.JSX.array}
    </div>
  </div>
}
