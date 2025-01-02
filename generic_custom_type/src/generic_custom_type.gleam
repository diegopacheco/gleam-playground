import gleam/int
import gleam/io
import gleam/option

// An option of string
pub const name: option.Option(String) = option.Some("Annah")

// An option of int
pub const level: option.Option(Int) = option.Some(10)

pub fn main() {
  io.println(option.unwrap(name, "?"))
  io.println(int.to_string(option.unwrap(level, 0)))

  case option.from_result(option.to_result(option.Some(42), "some_error")) {
    option.Some(a) -> io.println(int.to_string(a))
    option.None -> io.println("None")
  }
}
