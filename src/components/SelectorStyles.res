open Emotion

let container = css`
  list-style: none;

  display: flex;
  gap: 0.5rem;

  margin: 0;
  padding: 0;

  > li {
    > button {
      padding: 0.5rem;

      background: #e1e1e1;
      border: none;
      border-radius: 0.5rem;

      cursor: pointer;

      &[aria-selected="false"] {
        background: none;
      }
    }
  }
`
