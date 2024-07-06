let t = Time.fromString

let start = t("13:00")
let end = t("03:30+1")

let days: array<Day.t> = [
  {
    name: "Freitag",
    stages: [
      {
        name: "Mad Max",
        bands: [
          {id: "1", name: "Itchy", start: t("15:00"), end: t("15:45")},
          {id: "2", name: "Imminence", start: t("16:15"), end: t("17:00")},
        ],
      },
      {
        name: "Medusa",
        bands: [
          {id: "3", name: "Blabla", start: t("16:45"), end: t("18:00")},
        ],
      },
      {
        name: "Hardbowl",
        bands: [],
      },
      {
        name: "Backyard",
        bands: [],
      },
    ],
  },
  {
    name: "Samstag",
    stages: [],
  },
  {
    name: "Sonntag",
    stages: [],
  },
]

// siamese: geht so
// our mirage: geht so
// allt: schon besser
// skywalker: bisher am schlechtesten
// avalanche effect: bisher am besten, aber auch nicht so der brüller
// kora winter: verrückt
// will of ligeia: ballern
// tage your guilt: ok
// among traitors: ganz gut
// out of the blue hc: ganz gut
// darkk: glaube ganz cool, aber man findet kaum was
