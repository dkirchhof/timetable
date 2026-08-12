type props = {
  festival: Festival.t,
  day: Day.t,
  ratings: Voby.Observable.t<Ratings.t>,
  ratingFilter: Voby.Observable.t<RatingFilter.t>,
}

let container = Emotion.css`
  display: grid;
  grid-template-columns: auto 1fr;
  gap: 1rem;
`

let stages = minWidth =>
  Emotion.css`
  display: grid;
  grid-auto-flow: column;

  overflow-x: auto;

  > * {
    min-width: ${Int.toString(minWidth)}vw;
  }
`

let list = Emotion.css`
  list-style: none;

  margin: 0;
  padding: calc(var(--stage-name-height) - 1ex) 0 0 0;

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
    <ul class=list>
      {range
      ->Array.map(r => <li> {r->Time.toString->Voby.JSX.string} </li>)
      ->Voby.JSX.array}
    </ul>

    {Voby.Observable.bind(Zoom.zoom, zoom =>
      <div class={stages(zoom)}>
        {props.day.stages
        ->Array.mapWithIndex((stage, index) =>
          <StageRenderer index stage ratings=props.ratings ratingFilter=props.ratingFilter />
        )
        ->Voby.JSX.array}
      </div>
    )}
  </div>
}
