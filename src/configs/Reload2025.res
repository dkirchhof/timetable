let t = Time.fromString

let config: Festival.t = {
  name: "Reload 2025",
  slug: "reload-2025",
  color: "#ffb000",
  start: t("09:00"),
  end: t("04:00+1"),
  days: [
    {
      name: "Mittwoch",
      stages: [
        {
          name: "Tentstage",
          bands: [
            {id: "give-me-rain", name: "Give Me Rain", start: t("17:00"), end: t("18:00")},
            {id: "musik", name: "Musik", start: t("18:00"), end: t("21:00")},
            {
              id: "morecore-party",
              name: "Morecore-Party Festival Warm-Up",
              start: t("21:00"),
              end: t("04:00+1"),
            },
          ],
        },
      ],
    },
    {
      name: "Donnerstag",
      stages: [
        {
          name: "Impericon Mainstage",
          bands: [
            {
              id: "the-butcher-sisters",
              name: "The Butcher Sisters",
              start: t("18:25"),
              end: t("19:10"),
            },
            {
              id: "bleed-from-within",
              name: "Bleed From Within",
              start: t("20:00"),
              end: t("20:50"),
            },
            {id: "static-x", name: "Static-X", start: t("21:40"), end: t("22:20")},
            {id: "trivium", name: "Trivium", start: t("23:15"), end: t("00:45+1")},
          ],
        },
        {
          name: "Plazastage",
          bands: [
            {id: "scythe-beast", name: "Scythe Beast", start: t("12:00"), end: t("12:30")},
            {id: "conjurer", name: "Conjurer", start: t("12:45"), end: t("13:20")},
            {id: "annisokay", name: "Annisokay", start: t("13:45"), end: t("14:20")},
            {id: "dope", name: "Dope", start: t("14:50"), end: t("15:20")},
            {id: "adept", name: "Adept", start: t("15:40"), end: t("16:20")},
            {id: "finnroll", name: "Finnroll", start: t("16:40"), end: t("17:10")},
            {id: "kubal-khan-tx", name: "Kubal Khan TX", start: t("17:40"), end: t("18:15")},
            {id: "obituary", name: "Obituary", start: t("18:40"), end: t("19:25")},
            {id: "wind-rose", name: "Wind Rose", start: t("20:55"), end: t("21:35")},
            {id: "fear-factory", name: "Fear Factory", start: t("00:50+1"), end: t("01:35+1")},
          ],
        },
        {
          name: "Tentstage",
          bands: [
            {id: "below-zero", name: "Below Zero", start: t("17:00"), end: t("18:00")},
            {id: "dj-fuchs", name: "DJ Fuchs", start: t("18:00"), end: t("22:00")},
            {
              id: "vinyl-riot-by-kunz-und-jr",
              name: "Vinyl Riot by Kunz & JR",
              start: t("22:00"),
              end: t("04:00+1"),
            },
          ],
        },
      ],
    },
    {
      name: "Freitag",
      stages: [
        {
          name: "Impericon Mainstage",
          bands: [
            {
              id: "breakdown-of-sanity",
              name: "Breakdown of Sanity",
              start: t("13:10"),
              end: t("13:50"),
            },
            {id: "hanabie", name: "Hanabie.", start: t("14:10"), end: t("14:50")},
            {id: "the-halo-effect", name: "The Halo Effect", start: t("15:10"), end: t("15:50")},
            {id: "landmvrks", name: "Landmvrks", start: t("16:10"), end: t("16:50")},
            {id: "ministry", name: "Ministry", start: t("17:15"), end: t("18:05")},
            {id: "gojira", name: "Gojira", start: t("19:25"), end: t("20:35")},
            {id: "machine-head", name: "Machine Head", start: t("23:05"), end: t("01:05+1")},
          ],
        },
        {
          name: "Plazastage",
          bands: [
            {id: "mambo-kurt", name: "Mambo Kurt", start: t("10:30"), end: t("11:10")},
            {
              id: "celestial-sanctuary",
              name: "Celestial Sanctuary",
              start: t("11:25"),
              end: t("12:05"),
            },
            {id: "our-promise", name: "Our Promise", start: t("12:15"), end: t("12:55")},
            {id: "downset", name: "Downset", start: t("13:10"), end: t("13:50")},
            {id: "rivers-of-nihil", name: "Rivers of Nihil", start: t("15:25"), end: t("15:55")},
            {id: "prong", name: "Prong", start: t("16:35"), end: t("17:15")},
            {id: "the-exploited", name: "The Exploited", start: t("18:55"), end: t("19:35")},
            {id: "coldrain", name: "Coldrain", start: t("20:25"), end: t("21:05")},
            {id: "drowning-pool", name: "Drowning Pool", start: t("23:05"), end: t("23:45")},
            {id: "the-browning", name: "The Browning", start: t("01:10+1"), end: t("01:55+1")},
          ],
        },
        {
          name: "Tentstage",
          bands: [
            {
              id: "screaming-workshop",
              name: "Screaming Workshop mit David Dannenberg",
              start: t("13:30"),
              end: t("14:30"),
            },
            {id: "ducs", name: "Ducs", start: t("17:00"), end: t("18:00")},
            {id: "dj-fuchs", name: "DJ Fuchs", start: t("18:00"), end: t("22:00")},
            {
              id: "hard-floor-special",
              name: "Hard Floor Special Morecore Party",
              start: t("22:00"),
              end: t("04:00+1"),
            },
          ],
        },
      ],
    },
    {
      name: "Samstag",
      stages: [
        {
          name: "Impericon Mainstage",
          bands: [
            {
              id: "abandoned-in-destiny",
              name: "Abandoned in Destiny",
              start: t("10:45"),
              end: t("11:20"),
            },
            {
              id: "watch-out-stampede",
              name: "Watch Out Stampede",
              start: t("11:30"),
              end: t("12:05"),
            },
            {id: "blood-command", name: "Blood Command", start: t("12:15"), end: t("12:50")},
            {
              id: "rise-of-the-northstar",
              name: "Rise of the Northstar",
              start: t("13:00"),
              end: t("13:40"),
            },
            {id: "fit-for-a-king", name: "Fit For A King", start: t("14:00"), end: t("14:40")},
            {id: "mastodon", name: "Mastodon", start: t("19:25"), end: t("20:35")},
            {id: "while-she-sleeps", name: "While She Sleeps", start: t("21:35"), end: t("22:45")},
            {id: "i-prevail", name: "I Prevail", start: t("23:20"), end: t("00:25+1")},
          ],
        },
        {
          name: "Plazastage",
          bands: [
            {
              id: "frog-bog-dosenband",
              name: "Frog Bog Dosenband",
              start: t("10:00"),
              end: t("10:40"),
            },
            {id: "avralize", name: "Avralize", start: t("12:15"), end: t("12:55")},
            {id: "shoeline", name: "Shoeline", start: t("13:05"), end: t("13:45")},
            {id: "turbobier", name: "Turbobier", start: t("14:15"), end: t("14:55")},
            {id: "crypta", name: "Crypta", start: t("15:55"), end: t("16:35")},
            {id: "crystal-lake", name: "Crystal Lake", start: t("17:25"), end: t("18:05")},
            {id: "august-burns-red", name: "August Burns Red", start: t("19:00"), end: t("19:40")},
            {id: "kataklysm", name: "Kataklysm", start: t("20:50"), end: t("21:30")},
          ],
        },
        {
          name: "Tentstage",
          bands: [
            {
              id: "kaffeekraenzchen",
              name: "Kaffeekränzchen mit den Organisatoren",
              start: t("14:30"),
              end: t("15:30"),
            },
            {
              id: "high-desert-queen",
              name: "High Desert Queen",
              start: t("17:00"),
              end: t("18:00"),
            },
            {id: "dj-fuchs", name: "DJ Fuchs", start: t("18:00"), end: t("22:00")},
            {id: "dj-tim", name: "DJ Tim", start: t("22:00"), end: t("04:00")},
            {id: "afentoolio", name: "Afentoolio", start: t("22:00"), end: t("04:00+1")},
          ],
        },
      ],
    },
  ],
}
