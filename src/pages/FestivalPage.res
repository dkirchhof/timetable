type props = {
  festival: Festival.t,
  deselectFestival: unit => unit,
}

let container = (festival: Festival.t) =>
  Emotion.css`
    --accent-color: ${festival.color};
    --timetable-offset: ${Int.toString(festival.start.h)}
  `

let main = Emotion.css`
  padding: 0.5rem;
`

let make = props => {
  DomUtils.setTitle(`Timetable | ${props.festival.name}`)

  let data = Persistent.loadData(props.festival)

  let selectedView = Voby.Observable.make(data.filter.view)
  let selectedDay = Voby.Observable.make(data.filter.day)
  let ratingFilter = Voby.Observable.make(data.filter.ratings)

  let ratings = Voby.Observable.make(data.ratings)

  Voby.Hooks.useEffect(() => {
    Persistent.saveData(
      props.festival.slug,
      {
        filter: {
          view: Voby.Observable.getValue(selectedView),
          day: Voby.Observable.getValue(selectedDay),
          ratings: Voby.Observable.getValue(ratingFilter),
        },
        ratings: Voby.Observable.getValue(ratings),
      },
    )
  })

  <div class={container(props.festival)}>
    <Header title=props.festival.name backButtonCB={props.deselectFestival} />
    <main class=main>
      <ViewSelector selectedView />

      {Voby.Observable.bind(selectedView, selectedView =>
        switch selectedView {
        | Timetable => <DaySelector festival=props.festival selectedDay />
        | Bands => Jsx.null
        }
      )}

      <RatingFilterRenderer ratingFilter />

      {Voby.Observable.bind(selectedView, selectedView =>
        switch selectedView {
        | Timetable =>
          <FestivalPage_Timetable festival=props.festival selectedDay ratingFilter ratings />
        | Bands => <FestivalPage_Bands festival=props.festival ratingFilter ratings />
        }
      )}
    </main>
    <RatingPicker />
  </div>
}
