@jsx.component
let make = () => {
  <ul class=SelectorStyles.container>
    {State.config.days
    ->Array.map(day =>
      <li>
        <button
          ariaSelected={Voby.Observable.bind(State.selectedDay, selectedDay => day === selectedDay)}
          onClick={_ => State.setDay(day)}>
          {Voby.JSX.string(day.name)}
        </button>
      </li>
    )
    ->Voby.JSX.array}
  </ul>
}
