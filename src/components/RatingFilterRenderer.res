type props = {
  ratingFilter: Voby.Observable.t<RatingFilter.t>,
}

let make = props => {
  <ul class=SelectorStyles.container>
    {Voby.Observable.bind(props.ratingFilter, filter => {
      filter
      ->Map.entries
      ->Iterator.toArray
      ->Array.map(((rating, selected)) => {
        <li>
          <button
            ariaSelected={selected}
            onClick={_ =>
              Voby.Observable.update(
                props.ratingFilter,
                current => RatingFilter.setRating(current, rating, !selected),
              )}
          >
            <RatingRenderer rating />
          </button>
        </li>
      })
      ->Voby.JSX.array
    })}
  </ul>
}
