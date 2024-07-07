type props = {festival: Festival.t, selectedDay: Voby.Observable.t<int>}

let make = props => {
  <ul class=SelectorStyles.container>
    {props.festival.days
    ->Array.mapWithIndex((day, i) =>
      <li>
        <button
          ariaSelected={Voby.Observable.bind(props.selectedDay, selectedDay => i === selectedDay)}
          onClick={_ => Voby.Observable.update(props.selectedDay, _ => i)}>
          {Voby.JSX.string(day.name)}
        </button>
      </li>
    )
    ->Voby.JSX.array}
  </ul>
}
