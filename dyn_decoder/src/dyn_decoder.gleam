import gleam/dynamic/decode
import gleam/io
import gleam/json
import gleam/string

pub type Person {
  Person(name: String, age: Int)
}

fn person_decoder() -> decode.Decoder(Person) {
  use name <- decode.field("name", decode.string)
  use age <- decode.field("age", decode.int)
  decode.success(Person(name, age))
}

pub fn main() {
  let json_string = "{\"name\": \"Alice\", \"age\": 42}"
  let parsed_json = json.parse(from: json_string, using: person_decoder())
  let _ = case parsed_json {
    Ok(json_value) ->
      io.debug(string.concat(["Parsed JSON: ", string.inspect(json_value)]))
    Error(_) -> io.debug("Error parsing JSON: #{e}")
  }
}
