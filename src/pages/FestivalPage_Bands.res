type props = {
  festival: Festival.t,
  ratingFilter: Voby.Observable.t<RatingFilter.t>,
  ratings: Voby.Observable.t<Ratings.t>,
}

let list = Emotion.css`
  list-style: none;

  margin: 0;
  padding: 1rem 1rem 0 0;

  display: grid;
  grid-template-columns: 1fr 1fr;
  gap: 1.5rem 1.5rem;
`

let make = props => {
  let bands = Festival.getBands(props.festival)

  <ul class=list>
    {bands
    ->Array.map(band =>
      <BandRenderer
        band={Obj.magic(band)}
        day=band.day
        stageName=band.stage
        ratings=props.ratings
        ratingFilter=props.ratingFilter
      />
    )
    ->Voby.JSX.array}
  </ul>
}
