type t = Timetable | Bands

let all = [Timetable, Bands]

external fromString: string => t = "%identity"
external toString: t => string = "%identity"
