type t =
  | @as(0) Bad
  | @as(1) Neutral
  | @as(2) Good

let all = [Bad, Neutral, Good]

external fromFloat: float => t = "%identity"
external toFloat: t => float = "%identity"
