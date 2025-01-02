import gleam/io

pub fn main() {
  // If a variable is intended to not be used, then the name can be prefixed with an underscore, silencing the warning.
  let _score = 1000

  io.println("Hello from discard_patterns!")
}
