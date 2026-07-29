type t = {
  name: string,
  slug: string,
  color: string,
  start: Time.t,
  end: Time.t,
  days: array<Day.t>,
}

let getBands = (festival: t) => {
  festival.days
  ->Array.flatMap(day =>
    day.stages->Array.flatMap(stage =>
      stage.bands->Array.map(
        band => {
          let ex: Band.ex = {
            id: band.id,
            name: band.name,
            start: band.start,
            end: band.end,
            stage: stage.name,
            day: day.name,
          }

          (ex.id, ex)
        },
      )
    )
  )
  ->Dict.fromArray
  ->Dict.valuesToArray
  ->Array.toSorted((a, b) => String.localeCompare(a.name, b.name))
}
