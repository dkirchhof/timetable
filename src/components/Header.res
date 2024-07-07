type props = {title: string, backButtonCB?: unit => unit}

let shadow = Emotion.keyframes`
  0% { box-shadow: 0 0.5rem 1rem rgb(0 0 0 / 0%); }
  100% { box-shadow: 0 0.5rem 1rem rgb(0 0 0 / 20%); }
`

let header = Emotion.css`
  display: grid;
  align-items: center;
  grid-template-columns: 2rem 1fr 2rem;

  position: sticky;
  top: 0;
  height: 2rem;
  margin-bottom: 0.5rem;
  padding: 1rem;
  z-index: 1;

  background: var(--accent-color);

  @supports not (animation-timeline: scroll()) {
    box-shadow: 0 0.5rem 1rem rgb(0 0 0 / 20%);
  }

  animation: ${shadow} linear forwards;
  animation-timeline: scroll();
  animation-range: 0vh 10vh;

  > button {
    width: 2rem;
    height: 2rem;
    padding: 0;

    border: 0;
    background: none;

    > svg {
      width: 100%;
      height: 100%;
    }
  }

  > h1 {
    margin: 0;
    grid-column: 2;

    font-size: 1.5rem;
    font-weight: normal;
    text-align: center;
  }
`

let make = props =>
  <header class=header>
    {switch props.backButtonCB {
    | Some(cb) =>
      <button onClick={_ => cb()}>
        <svg
          viewBox="0 0 24 24"
          fill="none"
          stroke="currentColor"
          strokeWidth="1.5"
          strokeLinecap="round"
          strokeLinejoin="round">
          <path d="m15 18-6-6 6-6" />
        </svg>
      </button>
    | None => Voby.JSX.null
    }}
    <h1> {Voby.JSX.string(props.title)} </h1>
  </header>
