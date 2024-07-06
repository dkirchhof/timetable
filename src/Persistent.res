let loadData: string => Data.t = festival => {
  let fromStorage = Dom.Storage2.getItem(Dom.Storage.localStorage, festival)

  switch fromStorage {
  | Some(str) => {
      let parsed = JSON.parseExn(str)

      switch parsed {
      | Object(result) => Obj.magic(result)
      | _ => Dict.make()
      }
    }
  | None => Dict.make()
  }
}

let saveData = (festival, data) => {
  data
  ->JSON.stringifyAny
  ->Option.forEach(str => Dom.Storage2.setItem(Dom.Storage.localStorage, festival, str))
}
