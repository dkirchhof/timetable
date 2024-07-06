open Emotion

let container = css`
  list-style: none;

  display: grid;
  grid-auto-flow: column;
  gap: 0.5rem;

  margin: 0 0 0.5rem 0;
  padding: 0.5rem;

  background: var(--border-color);
  border-radius: 0.5rem;

  > li {
    > button {
      width: 100%;
      padding: 0.5rem;

      background: var(--select-color);
      border: none;
      border-radius: 0.25rem;

      &[aria-selected="false"] {
        background: none;
      }
    }
  }
`
