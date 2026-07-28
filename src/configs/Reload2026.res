let t = Time.fromString

let config: Festival.t = {
  name: "Reload 2026",
  slug: "reload-2026",
  color: "#ffb000",
  start: t("09:00"),
  end: t("04:00+1"),
  days: [
    {
      name: "Mittwoch",
      stages: [
        {
          name: "Radio Bob Stage",
          bands: [
            {
              id: "hitster-bingo",
              name: "Hitster-Bingo",
              start: t("15:00"),
              end: t("17:00"),
            },
          ],
        },
        {
          name: "Tent Stage",
          bands: [
            {
              id: "heartless-human-harvest",
              name: "Heartless Human Harvest",
              start: t("18:00"),
              end: t("19:00"),
            },
            {id: "dramatist", name: "Dramatist", start: t("20:00"), end: t("21:00")},
            {
              id: "morecore-warm-up",
              name: "Morecore Warm-Up",
              start: t("22:00"),
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
          name: "Radio Bob Stage",
          bands: [
            {id: "fit-für-n-pit", name: "Fit für'n Pit", start: t("10:15"), end: t("10:45")},
            {id: "wsgmn", name: "WSGMN Podcast", start: t("13:30"), end: t("14:15")},
          ],
        },
        {
          name: "Impericon Mainstage",
          bands: [
            {
              id: "stick-to-your-guns",
              name: "Stick To Your Guns",
              start: t("16:35"),
              end: t("17:15"),
            },
            {id: "orbit-culture", name: "Orbit Culture", start: t("18:05"), end: t("18:45")},
            {
              id: "thy-art-is-murder",
              name: "Thy Art Is Murder",
              start: t("19:35"),
              end: t("20:20"),
            },
            {id: "lamb-of-god", name: "Lamb of God", start: t("21:10"), end: t("22:25")},
            {id: "arch-enemy", name: "Arch Enemy", start: t("23:30"), end: t("01:00+1")},
          ],
        },
        {
          name: "Heist Plaza Stage",
          bands: [
            {id: "wrestlemaniacs", name: "Wrestlemaniacs", start: t("12:00"), end: t("12:35")},
            {id: "vulvarine", name: "Vulvarine", start: t("12:50"), end: t("13:30")},
            {id: "allt", name: "Allt", start: t("13:50"), end: t("14:30")},
            {id: "self-deception", name: "Self Deception", start: t("14:50"), end: t("15:30")},
            {id: "zsk", name: "ZSK", start: t("15:50"), end: t("16:30")},
            {id: "deafheaven", name: "Deafheaven", start: t("17:20"), end: t("18:00")},
            {id: "terror", name: "Terror", start: t("18:50"), end: t("19:30")},
            {id: "soulfly", name: "Soulfly", start: t("20:25"), end: t("21:05")},
            {
              id: "black-label-society",
              name: "Black Label Society",
              start: t("22:30"),
              end: t("23:25"),
            },
            {id: "perturbator", name: "Perturbator", start: t("01:05+1"), end: t("01:55+1")},
          ],
        },
        {
          name: "Tent Stage",
          bands: [
            {
              id: "from-march-to-may",
              name: "From March To May",
              start: t("19:00"),
              end: t("20:00"),
            },
            {
              id: "aftershow-party",
              name: "Aftershow Party",
              start: t("21:00"),
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
          name: "Radio Bob Stage",
          bands: [
            {id: "fit-für-n-pit", name: "Fit für'n Pit", start: t("10:15"), end: t("10:45")},
            {
              id: "harte-saite",
              name: "Harte Saite Live Interview",
              start: t("12:30"),
              end: t("13:15"),
            },
          ],
        },
        {
          name: "Impericon Mainstage",
          bands: [
            {
              id: "signs-of-the-swarm",
              name: "Signs of the Swarm",
              start: t("11:05"),
              end: t("11:45"),
            },
            {id: "alien-ant-farm", name: "Alien Ant Farm", start: t("12:30"), end: t("13:10")},
            {
              id: "fit-for-an-autopsy",
              name: "Fit For An Autopsy",
              start: t("13:55"),
              end: t("14:35"),
            },
            {id: "paleface-swiss", name: "Paleface Swiss", start: t("15:25"), end: t("16:05")},
            {id: "imminence", name: "Imminence", start: t("16:55"), end: t("17:35")},
            {id: "alestorm", name: "Alestorm", start: t("18:25"), end: t("19:20")},
            {id: "airbourne", name: "Airbourne", start: t("20:20"), end: t("21:25")},
            {id: "judas-priest", name: "Judas Priest", start: t("22:15"), end: t("23:45")},
          ],
        },
        {
          name: "Heist Plaza Stage",
          bands: [
            {id: "gutalax", name: "Gutalax", start: t("09:30"), end: t("10:10")},
            {
              id: "excrementory-grindfuckers",
              name: "Excrementory Grindfuckers",
              start: t("10:30"),
              end: t("11:00"),
            },
            {id: "inhuman-nature", name: "Inhuman Nature", start: t("11:50"), end: t("12:25")},
            {id: "cytotoxin", name: "Cytotoxin", start: t("13:15"), end: t("13:50")},
            {
              id: "broken-by-the-scream",
              name: "Broken By The Scream",
              start: t("14:40"),
              end: t("15:20"),
            },
            {id: "thundermother", name: "Thundermother", start: t("16:10"), end: t("16:50")},
            {id: "dead-by-april", name: "Dead By April", start: t("17:40"), end: t("18:20")},
            {id: "kim-dracula", name: "Kim Dracula", start: t("19:25"), end: t("20:05")},
            {id: "thrown", name: "Thrown", start: t("21:30"), end: t("22:10")},
            {id: "northlane", name: "Northlane", start: t("23:55"), end: t("00:55+1")},
          ],
        },
        {
          name: "Tent Stage",
          bands: [
            {
              id: "screaming-workshop",
              name: "Screaming Workshop mit David Dannenberg",
              start: t("14:30"),
              end: t("15:30"),
            },
            {id: "mudfinger", name: "Mudfinger", start: t("19:00"), end: t("20:00")},
            {
              id: "aftershow-party",
              name: "Aftershow Party",
              start: t("21:30"),
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
          name: "Radio Bob Stage",
          bands: [
            {id: "fit-für-n-pit", name: "Fit für'n Pit", start: t("09:30"), end: t("10:00")},
            {
              id: "kerngeschäft-podcast",
              name: "Kerngeschäft Podcast",
              start: t("13:05"),
              end: t("13:55"),
            },
          ],
        },
        {
          name: "Impericon Mainstage",
          bands: [
            {
              id: "from-fall-to-spring",
              name: "From Fall To Spring",
              start: t("11:40"),
              end: t("12:20"),
            },
            {id: "vended", name: "Vended", start: t("13:10"), end: t("13:50")},
            {id: "dominum", name: "Dominum", start: t("14:40"), end: t("15:20")},
            {id: "future-palace", name: "Future Palace", start: t("16:10"), end: t("16:50")},
            {id: "the-ghost-inside", name: "The Ghost Inside", start: t("17:40"), end: t("18:25")},
            {id: "avatar", name: "Avatar", start: t("19:15"), end: t("20:15")},
            {id: "godsmack", name: "Godsmack", start: t("21:05"), end: t("22:20")},
            {id: "in-flames", name: "In Flames", start: t("23:30"), end: t("01:00+1")},
          ],
        },
        {
          name: "Heist Plaza Stage",
          bands: [
            {id: "vengaboys", name: "Vengaboys", start: t("10:00"), end: t("10:40")},
            {id: "dead-phoenix", name: "Dead Phoenix", start: t("11:00"), end: t("11:35")},
            {id: "luna-kills", name: "Luna Kills", start: t("12:25"), end: t("13:05")},
            {id: "100-kilo-herz", name: "100 Kilo Herz", start: t("13:55"), end: t("14:35")},
            {id: "misery-index", name: "Misery Index", start: t("15:25"), end: t("16:05")},
            {id: "gaerea", name: "Gaerea", start: t("16:55"), end: t("17:35")},
            {id: "kittie", name: "Kittie", start: t("18:30"), end: t("19:10")},
            {id: "agnostic-front", name: "Agnostic Front", start: t("20:20"), end: t("21:00")},
            {id: "amorphis", name: "Amorphis", start: t("22:25"), end: t("23:20")},
          ],
        },
        {
          name: "Tent Stage",
          bands: [
            {
              id: "kaffeekraenzchen",
              name: "Kaffeeklatsch mit den Veranstaltern",
              start: t("15:30"),
              end: t("17:00"),
            },
            {
              id: "godzilla-in-the-kitchen",
              name: "Godzilla in the Kitchen",
              start: t("19:00"),
              end: t("20:00"),
            },
            {
              id: "aftershow-party",
              name: "Aftershow Party",
              start: t("21:30"),
              end: t("04:00+1"),
            },
          ],
        },
      ],
    },
  ],
}
