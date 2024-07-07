module App = {
  @jsx.component
  let make = () => {
    let selectedFestival = Persistent.loadSelectedFestival()->Voby.Observable.make

    let selectFestival = festival => {
      Voby.Observable.update(selectedFestival, _ => Some(festival))
    }

    let deselectFestival = () => {
      Voby.Observable.update(selectedFestival, _ => None)
    }

    Voby.Hooks.useEffect(() => {
      selectedFestival
      ->Voby.Observable.getValue
      ->Persistent.saveSelectedFestival
    })

    Voby.Observable.bind(selectedFestival, festival => {
      switch festival {
      | Some(festival) => <Timetable festival deselectFestival />
      | None => <Festivals selectFestival />
      }
    })
  }
}

let x = Emotion.injectGlobal`
  html, body {
    margin: 0;
    padding: 0;
  }

  #app {
    --accent-color: #ffb000;
    --border-color: #eeeeee;
    --select-color: #e1e1e1;

    --stage-name-height: 4rem;
    --cell-height: 7rem;

    color: #000002;

    font-family: system-ui;
  }
`

Voby.DOM.render(<App />, Voby.DOM.querySelector("#app")->Option.getUnsafe)
