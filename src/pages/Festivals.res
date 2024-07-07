type props = {selectFestival: Festival.t => unit}

let main = Emotion.css`
  padding: 0.5rem;

  > ul {
    list-style: none;

    margin: 0;
    padding: 0;

    > li > button {
      display: grid;
      align-items: center;
      grid-template-columns: 1fr 2rem;

      width: 100%;
      padding: 1rem 0.5rem 1rem 1rem;
      background: var(--border-color);
      border: none;

      font: inherit;
      text-align: left;
    }
  }
`

let make = props =>
  <div>
    <Header title="Timetable" />
    <main class=main>
      <ul>
        {Config.festivals
        ->Array.map(festival =>
          <li>
            <button onClick={_ => props.selectFestival(festival)}>
              {Voby.JSX.string(festival.name)}
              <svg
                viewBox="0 0 24 24"
                fill="none"
                stroke="currentColor"
                strokeWidth="1.5"
                strokeLinecap="round"
                strokeLinejoin="round">
                <path d="m9 18 6-6-6-6" />
              </svg>
            </button>
          </li>
        )
        ->Voby.JSX.array}
      </ul>
    </main>
  </div>
