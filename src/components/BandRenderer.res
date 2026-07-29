type props = {
  stageName: string,
  band: Band.t,
  ratings: Voby.Observable.t<Ratings.t>,
  ratingFilter: Voby.Observable.t<RatingFilter.t>,
}

let container = Emotion.css`
  grid-area: 1/1;
  translate: 0 calc((var(--start) - var(--timetable-offset)) * var(--cell-height));
  height: calc((var(--end) - var(--start)) * var(--cell-height));

  background: var(--accent-color);
  box-shadow: 0 0 1rem 0 rgba(0,0,0,.1);
  corner-shape: scoop;
  border-top-right-radius: 1.5rem;

  > button {
    display: grid;
    align-content: start;
    gap: 0.25rem;

    width: 100%;
    height: 100%;
    padding: 0.5rem 1.5rem 0.5rem 0.5rem;
    padding: 0.5rem;

    background: none;
    border: none;

    font: inherit;
  }
`

let filteredOut = Emotion.css`
  opacity: 0.25;
`

let meta = Emotion.css`
  overflow: hidden;

  font-size: 0.75rem;
  white-space: nowrap;
  text-overflow: ellipsis;
`

let name = Emotion.css`
  overflow: hidden;

  white-space: nowrap;
  text-overflow: ellipsis;
`

let ratingContainer = Emotion.css`
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

  Voby.Observable.bind2(props.ratings, props.ratingFilter, (ratings, filter) => {
    let rating = Ratings.getRating(ratings, props.band.id)

    let selected = switch rating {
    | Some(rating) => filter->RatingFilter.getRating(rating)
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
          State.showRatingPicker(rating =>
            Voby.Observable.update(
              props.ratings,
              ratings => Ratings.setRating(ratings, props.band.id, rating),
            )
          )}
      >
        <div class=name> {Voby.JSX.string(props.band.name)} </div>
        <div class=meta> {Voby.JSX.string(timeStr)} </div>
        <div class=meta> {Voby.JSX.string(props.stageName)} </div>
        <div class=ratingContainer>
          {switch rating {
          | Some(rating) => <RatingRenderer rating />
          | None => Voby.JSX.null
          }}
        </div>
      </button>
    </li>
  })
}
