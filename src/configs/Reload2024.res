let t = Time.fromString

let config: Festival.t = {
  name: "Reload 2024",
  slug: "reload-2024",
  color: "#ffb000",
  start: t("09:00"),
  end: t("02:00+1"),
  days: [
    {
      name: "Donnerstag",
      stages: [
        {
          name: "Plaza",
          bands: [
            {id: "1", name: "Iron Walrus", start: t("12:20"), end: t("13:00")},
            {id: "2", name: "Bokasssa", start: t("13:20"), end: t("14:00")},
            {id: "3", name: "Bodysnatcher", start: t("14:20"), end: t("15:00")},
            {id: "4", name: "Sylosis", start: t("15:20"), end: t("16:00")},
            {id: "5", name: "Unprocessed", start: t("16:20"), end: t("17:00")},
            {id: "6", name: "Cro-Mags", start: t("17:20"), end: t("18:00")},
            {id: "7", name: "Fiddlers Green", start: t("18:20"), end: t("19:00")},
            {id: "8", name: "Walls of Jericho", start: t("19:20"), end: t("20:00")},
            {id: "9", name: "Mushroomhead", start: t("20:20"), end: t("21:00")},
            {id: "10", name: "Emmure", start: t("21:25"), end: t("22:05")},
            {id: "11", name: "Whitechapel", start: t("22:30"), end: t("23:30")},
            {id: "12", name: "Millencolin", start: t("00:00+1"), end: t("01:00+1")},
          ],
        },
      ],
    },
    {
      name: "Freitag",
      stages: [
        {
          name: "Plaza",
          bands: [
            {id: "13", name: "Gutalax", start: t("09:30"), end: t("10:10")},
            {id: "14", name: "Anchors & Hearts", start: t("12:45"), end: t("13:15")},
            {id: "15", name: "Vukovi", start: t("13:45"), end: t("14:15")},
            {id: "16", name: "Thrown", start: t("14:55"), end: t("15:35")},
            {id: "17", name: "Soil", start: t("16:15"), end: t("16:55")},
            {id: "18", name: "Born of Osiris", start: t("17:35"), end: t("18:15")},
            {id: "19", name: "Dead Poet Society", start: t("19:00"), end: t("19:40")},
            {id: "20", name: "Butcher Babies", start: t("20:40"), end: t("21:20")},
            {id: "21", name: "Zeal & Ardor", start: t("00:45+1"), end: t("01:30+1")},
          ],
        },
        {
          name: "Main",
          bands: [
            {id: "22", name: "Beyond the Breach", start: t("10:15"), end: t("10:45")},
            {id: "23", name: "Paleface Swiss", start: t("11:05"), end: t("11:45")},
            {id: "24", name: "Nasty", start: t("12:05"), end: t("12:45")},
            {id: "25", name: "The Black Dahlia Murder", start: t("13:05"), end: t("13:45")},
            {id: "26", name: "Emil Bulls", start: t("14:15"), end: t("14:55")},
            {id: "27", name: "Paradise Lost", start: t("15:35"), end: t("16:15")},
            {id: "28", name: "Clutch", start: t("16:55"), end: t("17:35")},
            {id: "29", name: "Spiritbox", start: t("18:15"), end: t("19:00")},
            {id: "30", name: "Hatebreed", start: t("19:40"), end: t("20:40")},
            {id: "31", name: "Heaven Shall Burn", start: t("21:20"), end: t("22:35")},
            {id: "32", name: "Korn", start: t("23:10"), end: t("00:40+1")},
          ],
        },
      ],
    },
    {
      name: "Samstag",
      stages: [
        {
          name: "Plaza",
          bands: [
            {id: "33", name: "Heavysaurus", start: t("09:30"), end: t("10:10")},
            {id: "34", name: "Snakes in the Pit", start: t("12:45"), end: t("13:15")},
            {id: "35", name: "Green Lung", start: t("13:45"), end: t("14:15")},
            {id: "36", name: "As Everything Unfolds", start: t("14:55"), end: t("15:35")},
            {id: "37", name: "Future Palace", start: t("16:15"), end: t("16:55")},
            {id: "38", name: "The Butcher Sisters", start: t("17:35"), end: t("18:15")},
            {id: "39", name: "Massendefekt", start: t("19:00"), end: t("19:40")},
            {id: "40", name: "Madball", start: t("20:40"), end: t("21:20")},
            {id: "41", name: "Phil Campbell & The Bastard Sons", start: t("00:45+1"), end: t("01:30+1")},
          ],
        },
        {
          name: "Main",
          bands: [
            {id: "42", name: "Ankor", start: t("10:15"), end: t("10:45")},
            {id: "43", name: "The Gems", start: t("11:05"), end: t("11:45")},
            {id: "44", name: "Any Given Day", start: t("12:05"), end: t("12:45")},
            {id: "45", name: "Neara", start: t("13:05"), end: t("13:45")},
            {id: "46", name: "Knorkator", start: t("14:15"), end: t("14:55")},
            {id: "47", name: "Dragonforce", start: t("15:35"), end: t("16:15")},
            {id: "48", name: "Lionheart", start: t("16:55"), end: t("17:35")},
            {id: "49", name: "Motionless in White", start: t("18:15"), end: t("19:00")},
            {id: "50", name: "Behemoth", start: t("19:40"), end: t("20:40")},
            {id: "51", name: "Blind Guardian", start: t("21:20"), end: t("22:35")},
            {id: "52", name: "Amon Amarth", start: t("23:10"), end: t("00:40+1")},
          ],
        },
      ],
    },
  ],
}
