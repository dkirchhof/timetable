type t =
  | @as("👍") ThumbsUp
  | @as("👎") ThumbsDown
  | @as("🤔") Thinking
  | @as("🤮") Puke

let all = [ThumbsUp, ThumbsDown, Thinking, Puke]

external fromString: string => t = "%identity"
