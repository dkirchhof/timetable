type props = {festival: Festival.t, deselectFestival: unit => unit}

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

  let ratings = Voby.Observable.make(data.ratings)
  let selectedDay = Voby.Observable.make(data.filter.day)
  let emojiFilter = Voby.Observable.make(data.filter.emojis)

  Voby.Hooks.useEffect(() => {
    Persistent.saveData(
      props.festival.slug,
      {
        filter: {
          day: Voby.Observable.getValue(selectedDay),
          emojis: Voby.Observable.getValue(emojiFilter),
        },
        ratings: Voby.Observable.getValue(ratings),
      },
    )
  })

  <div class={container(props.festival)}>
    <Header title=props.festival.name backButtonCB={props.deselectFestival} />
    <main class=main>
      <DaySelector festival=props.festival selectedDay />
      <EmojiFilterRenderer emojiFilter />
      {Voby.Observable.bind(selectedDay, selectedDay => {
        let day = Array.getUnsafe(props.festival.days, selectedDay)

        <DayRenderer festival=props.festival day ratings emojiFilter />
      })}
    </main>
    <EmojiPicker />
  </div>
}
