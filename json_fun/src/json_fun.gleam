import gleam/io
import gleam/json

pub type Cat {
  Cat(name: String, lives: Int, flaws: String, nicknames: List(String))
}

pub fn cat_to_json(cat: Cat) -> String {
  json.object([
    #("name", json.string(cat.name)),
    #("lives", json.int(cat.lives)),
    #("flaws", json.null()),
    #("nicknames", json.array(cat.nicknames, of: json.string)),
  ])
  |> json.to_string
}

pub fn main() {
  let cat = Cat("Mittens", 9, "", ["Mitty", "Mittens the Great"])
  cat_to_json(cat)
  |> io.println
}
