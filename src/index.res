module App = {
  @jsx.component
  let make = () => {
    <>
      <DaySelector />
      <EmojiFilterRenderer />
      <DayRenderer />
      <EmojiPicker />
    </>
  }
}

Emotion.injectGlobal`
  #app {
    --accent-color: #ffb000;
    --border-color: #eeeeee;
    --select-color: #e1e1e1;

    --cell-height: 5rem;

    color: #000002;
  }
`
Voby.DOM.render(<App />, Voby.DOM.querySelector("#app")->Option.getUnsafe)
