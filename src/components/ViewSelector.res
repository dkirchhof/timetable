module Item = {
  type props = {
    selectedView: Voby.Observable.t<View.t>,
    view: View.t,
  }

  let make = props => {
    <li>
      <button
        ariaSelected={Voby.Observable.bind(props.selectedView, selectedView =>
          selectedView === props.view
        )}
        onClick={_ => Voby.Observable.update(props.selectedView, _ => props.view)}
      >
        {Voby.JSX.string((props.view :> string))}
      </button>
    </li>
  }
}

type props = {
  selectedView: Voby.Observable.t<View.t>,
}

let make = props => {
  <ul class=SelectorStyles.container>
    <Item selectedView=props.selectedView view=Timetable />
    <Item selectedView=props.selectedView view=Bands />
  </ul>
}
