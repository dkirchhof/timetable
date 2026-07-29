type props = {
  festival: Festival.t,
  selectedDay: Voby.Observable.t<int>,
  ratingFilter: Voby.Observable.t<RatingFilter.t>,
  ratings: Voby.Observable.t<Ratings.t>,
}

let make = props => {
  Voby.Observable.bind(props.selectedDay, selectedDay => {
    let day = Array.getUnsafe(props.festival.days, selectedDay)

    <DayRenderer
      festival=props.festival day ratings=props.ratings ratingFilter=props.ratingFilter
    />
  })
}
