type props = {
  rating: Rating.t,
}

let container = Emotion.css`
  display: inline-block;
  width: 1.25rem;
  height: 1.25rem;
`

let make = props => {
  <span class=container>
    {switch props.rating {
    // | Bad => <Bad />
    // | Neutral => <Neutral />
    // | Good => <Good />
    | Bad => <HeartOff />
    | Neutral => <HeartCrack />
    | Good => <Heart />
    }}
  </span>
}
