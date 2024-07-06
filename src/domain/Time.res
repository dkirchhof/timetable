type t = float

let fromString = s => {
  let toFloat = s => s->Float.fromString->Option.getUnsafe

  let match = String.match(s, %re("/(\d\d):(\d\d)(\+\d)?/"))

  switch match {
  | Some([_, Some(h), Some(m), Some(carry)]) => {
      let h = toFloat(h)
      let m = toFloat(m) /. 60.0

      h +. 24.0 *. toFloat(carry) +. m
    }
  | Some([_, Some(h), Some(m), None]) => {
      let h = toFloat(h)
      let m = toFloat(m) /. 60.0

      h +. m
    }
  | _ => panic("Invalid time string")
  }
}

let toString = time => {
  let toString = f => f->Float.toString->String.padStart(2, "0")

  let h = time->mod_float(24.0)->Math.floor->toString
  let m = (time->mod_float(1.0) *. 60.0)->toString

  `${h}:${m}`
}
