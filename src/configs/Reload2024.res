let t = Time.fromString

let config: Festival.t = {
  start: t("13:00"),
  end: t("03:30+1"),
  days: [
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
          bands: [{id: "3", name: "Blabla", start: t("16:45"), end: t("18:00")}],
        },
      ],
    },
    {
      name: "Samstag",
      stages: [
        {
          name: "Mad Max",
          bands: [],
        },
        {
          name: "Medusa",
          bands: [],
        },
      ],
    },
    {
      name: "Sonntag",
      stages: [
        {
          name: "Mad Max",
          bands: [],
        },
        {
          name: "Medusa",
          bands: [],
        },
      ],
    },
  ],
}
