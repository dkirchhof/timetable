let delta = Float.toInt(Config.end -. Config.start) + 1
let range = Array.fromInitializer(~length=delta, i => Config.start +. Int.toFloat(i))

let container = Emotion.css`
  display: grid;
  grid-template-columns: auto 1fr;
  gap: 1rem;
`

let stages = Emotion.css`
  display: grid;
  grid-auto-flow: column;
`

let list = Emotion.css`
  list-style: none;

  margin: 0;
  padding: calc(var(--cell-height) - 0.75ex) 0 0 0;

  > li {
    height: var(--cell-height);
  }
`

@jsx.component
let make = () => {
  Voby.Observable.bind(State.selectedDay, day => {
    <div class=container>
      <div>
        <ul class=list>
          {range
          ->Array.map(r => <li> {r->Time.toString->Voby.JSX.string} </li>)
          ->Voby.JSX.array}
        </ul>
      </div>
      <div class=stages>
        {day.stages->Array.map(stage => <StageRenderer stage />)->Voby.JSX.array}
      </div>
    </div>
  })
}
