type props = {
  index: int,
  stage: Stage.t,
  ratings: Voby.Observable.t<Ratings.t>,
  ratingFilter: Voby.Observable.t<RatingFilter.t>,
}

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

  overflow: hidden;
  padding: 0.5rem;

  background: var(--accent-color);

  > span {
    overflow: hidden;

    white-space: nowrap;
    text-overflow: ellipsis;
  }
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
  let style = Obj.magic(`z-index: ${Int.toString(100 - props.index)}`)

  <div class=container style>
    <div class=name>
      <span> {Voby.JSX.string(props.stage.name)} </span>
    </div>
    <ul class=list>
      {props.stage.bands
      ->Array.map(band =>
        <BandRenderer
          stageName=props.stage.name band ratings=props.ratings ratingFilter=props.ratingFilter
        />
      )
      ->Voby.JSX.array}
    </ul>
  </div>
}
