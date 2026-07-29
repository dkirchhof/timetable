type filter = {
  view: View.t,
  day: int,
  ratings: RatingFilter.t,
}

type t = {
  filter: filter,
  ratings: Ratings.t,
}

// let schema = S.object(s => {
//   filter: s.field(
//     "filter",
//     S.object(s => {
//       day: s.field("day", S.int),
//       ratings: s.field("ratings", S.dict(S.bool)),
//     }),
//   ),
//   ratings: s.field("ratings", S.dict(S.string)),
// })

let loadSelectedFestival = () => {
  Dom.Storage2.getItem(Dom.Storage.localStorage, "festival")->Option.flatMap(slug =>
    Array.find(Config.festivals, festival => festival.slug === slug)
  )
}

let saveSelectedFestival = (festival: option<Festival.t>) => {
  Dom.Storage2.setItem(
    Dom.Storage.localStorage,
    "festival",
    Option.mapOr(festival, "", festival => festival.slug),
  )
}

// {"filter":{"day":1,"ratings":[[1, true], [2, false], ...]},"ratings":{"band1":1}}

let loadData = (festival: Festival.t) => {
  open JSON

  let tryParse = str => {
    try {
      str->parseExn->Some
    } catch {
    | _ => None
    }
  }

  let clamp = (~value, ~min, ~max) => value->Math.Int.min(max)->Math.Int.max(min)

  Dom.Storage.localStorage
  ->Dom.Storage2.getItem(festival.slug)
  ->Option.flatMap(tryParse)
  ->Option.flatMap(json => {
    switch json {
    | Object(dict{
        "filter": Object(dict{
          "view": String(view),
          "day": Number(day),
          "ratings": Array(ratingsFilter),
        }),
        "ratings": Object(ratings),
      }) => {
        let view = if View.all->Array.includes(View.fromString(view)) {
          View.fromString(view)
        } else {
          Timetable
        }

        let day = clamp(~value=Float.toInt(day), ~min=0, ~max=Array.length(festival.days) - 1)

        let ratingsFilter =
          ratingsFilter
          ->Array.map(item =>
            switch item {
            | Array([Number(rating), Boolean(selected)]) => {
                let rating = Rating.fromFloat(rating)

                if Rating.all->Array.includes(rating) {
                  Some((rating, selected))
                } else {
                  None
                }
              }
            | _ => None
            }
          )
          ->Array.keepSome
          ->Map.fromArray

        let ratings =
          ratings
          ->Dict.toArray
          ->Array.map(((id, rating)) =>
            switch rating {
            | Number(rating) => {
                let rating = Rating.fromFloat(rating)

                if Rating.all->Array.includes(rating) {
                  Some((id, rating))
                } else {
                  None
                }
              }
            | _ => None
            }
          )
          ->Array.keepSome
          ->Dict.fromArray

        Some({
          filter: {
            view,
            day,
            ratings: ratingsFilter,
          },
          ratings,
        })
      }
    | _ => None
    }
  })
  ->Option.getOr({
    filter: {
      view: Timetable,
      day: 0,
      ratings: RatingFilter.make(),
    },
    ratings: Ratings.make(),
  })
}

let saveData = (festival, data: t) => {
  open JSON

  let json = Object(
    dict{
      "filter": Object(
        dict{
          "view": String(View.toString(data.filter.view)),
          "day": Number(Int.toFloat(data.filter.day)),
          "ratings": Array(
            data.filter.ratings
            ->Map.entries
            ->Iterator.toArray
            ->Array.map(((rating, selected)) => Array([
              Number(Rating.toFloat(rating)),
              Boolean(selected),
            ])),
          ),
        },
      ),
      "ratings": Object(data.ratings->Dict.mapValues(rating => Number(Rating.toFloat(rating)))),
    },
  )

  json->stringify->Dom.Storage2.setItem(Dom.Storage.localStorage, festival, _)
}
