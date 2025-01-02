import gleam/io
import gleam/list

pub fn main() {
  list.each(erlang_the_movie, io.println)
}

const erlang_the_movie = [
  "📞", "Hello, Mike!", "Hello, Joe!", "System working?", "Seems to be.",
  "OK, fine.", "OK.", "💫",
]
