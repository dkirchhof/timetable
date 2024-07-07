type t = {h: int, m: int}

let fromString = s => {
  let toInt = s => s->Int.fromString->Option.getUnsafe

  let match = String.match(s, %re("/(\d\d):(\d\d)(\+\d)?/"))

  switch match {
  | Some([_, Some(h), Some(m), Some(carry)]) => {
      h: toInt(h) + toInt(carry) * 24,
      m: toInt(m),
    }
  | Some([_, Some(h), Some(m), None]) => {
      h: toInt(h),
      m: toInt(m),
    }
  | _ => panic("Invalid time string")
  }
}

let toString = time => {
  let toString = f => f->Int.toString->String.padStart(2, "0")

  let h = time.h->mod(24)->toString
  let m = time.m->toString

  `${h}:${m}`
}

let toFloat = time => {
  Int.toFloat(time.h) +. Int.toFloat(time.m) /. 60.0
}
