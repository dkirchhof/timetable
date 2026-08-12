let zoom = Voby.Observable.make(30)

let input = Emotion.css`
  position: fixed;
  bottom: 0.25rem;
  right: 0.5rem;
  z-index: 100;

  accent-color: var(--accent-color);
`

@jsx.component
let make = () => {
  let onInput = e => {
    let value = JsxEvent.Form.target(e)["valueAsNumber"]

    Voby.Observable.update(zoom, _ => value)
  }

  <input
    class=input
    type_="range"
    min="0"
    max="100"
    step=10.0
    value={Voby.Observable.bind(zoom, value => Int.toString(value))}
    onInput
  />
}
