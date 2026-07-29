type t = {
  id: string,
  name: string,
  start: Time.t,
  end: Time.t,
}

type ex = {
  ...t,
  stage: string,
  day: string,
}
