type props = {
  stage: Stage.t,
  ratings: Voby.Observable.t<Ratings.t>,
  emojiFilter: Voby.Observable.t<EmojiFilter.t>,
}

let container = Emotion.css`
  display: grid;
  grid-template-columns: subgrid;
  grid-column: 1 / 3;

  border-block-start: 1px solid var(--border-color);
`

let name = Emotion.css`
  display: flex;
  justify-content: center;
  align-items: center;

  padding: 1rem;

  background: var(--accent-color);

  white-space: nowrap;
`

let list = Emotion.css`
  list-style: none;

  display: grid;

  grid-column: 2;

  margin: 0;
  padding: 0;

  background: linear-gradient(to right, var(--border-color), transparent 1px);
  background-size: var(--cell-width) auto;
`

let make = props => {
  <li class=container>
    <div class=name> {Voby.JSX.string(props.stage.name)} </div>
    <ul class=list>
      {props.stage.bands
      ->Array.map(band =>
        <BandRenderer stage=props.stage band ratings=props.ratings emojiFilter=props.emojiFilter />
      )
      ->Voby.JSX.array}
    </ul>
  </li>
}
