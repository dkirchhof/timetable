@jsx.component
let make = () => {
  <ul class=SelectorStyles.container>
    {State.config.days
    ->Array.mapWithIndex((day, i) =>
      <li>
        <button
          ariaSelected={Voby.Observable.bind(State.selectedDay, selectedDay => i === selectedDay)}
          onClick={_ => State.setDay(i)}>
          {Voby.JSX.string(day.name)}
        </button>
      </li>
    )
    ->Voby.JSX.array}
  </ul>
}
