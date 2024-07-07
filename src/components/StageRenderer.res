type props = {stage: Stage.t}

let container = Emotion.css`
  display: grid;
  grid-template-rows: var(--stage-name-height) 1fr;

  border: 1px solid var(--border-color);
  border-right: none;

  &:last-child {
    border-right: 1px solid var(--border-color);
  }
`

let name = Emotion.css`
  display: flex;
  justify-content: center;
  align-items: center;

  padding: 1rem;

  background: var(--accent-color);
`

let list = Emotion.css`
  list-style: none;

  display: grid;

  margin: 0;
  padding: 0;

  background: linear-gradient(var(--border-color), transparent 1px);
  background-size: auto var(--cell-height);
`

let make = props => {
  <div class=container>
    <div class=name> {Voby.JSX.string(props.stage.name)} </div>
    <ul class=list>
      {props.stage.bands
      ->Array.map(band => <BandRenderer band />)
      ->Voby.JSX.array}
    </ul>
  </div>
}
