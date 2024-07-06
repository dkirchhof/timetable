module App = {
  @jsx.component
  let make = () => {
    <>
      <DaySelector />
      <DayRenderer />
      <EmojiPicker />
    </>
  }
}

Emotion.injectGlobal`
  #app {
    --accent-color: #ffb000;
    --border-color: lightgray;

    --cell-height: 5rem;

    color: #000002;
  }
`
Voby.DOM.render(<App />, Voby.DOM.querySelector("#app")->Option.getUnsafe)
