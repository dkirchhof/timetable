open RescriptSchema

type filter = {
  day: int,
  emojis: EmojiFilter.t,
}

type t = {
  filter: filter,
  ratings: Ratings.t,
}

let schema = S.object(s => {
  filter: s.field(
    "filter",
    S.object(s => {
      day: s.field("day", S.int),
      emojis: s.field("emojis", S.dict(S.bool)),
    }),
  ),
  ratings: s.field("ratings", S.dict(S.string)),
})

let loadSelectedFestival = () => {
  Dom.Storage2.getItem(Dom.Storage.localStorage, "festival")->Option.flatMap(slug =>
    Dict.get(Config.festivals, slug)
  )
}

let saveSelectedFestival = (festival: option<Festival.t>) => {
  Dom.Storage2.setItem(
    Dom.Storage.localStorage,
    "festival",
    Option.mapOr(festival, "", festival => festival.slug),
  )
}

let loadData = festival => {
  let fromStorage =
    Dom.Storage2.getItem(Dom.Storage.localStorage, festival)->Option.map(
      S.parseJsonStringWith(_, schema),
    )

  switch fromStorage {
  | Some(Ok(data)) => data
  | _ => {
      filter: {
        day: 0,
        emojis: EmojiFilter.make(),
      },
      ratings: Ratings.make(),
    }
  }
}

let saveData = (festival, data: t) => {
  data
  ->JSON.stringifyAny
  ->Option.forEach(str => Dom.Storage2.setItem(Dom.Storage.localStorage, festival, str))
}
