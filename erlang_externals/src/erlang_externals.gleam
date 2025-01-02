import gleam/io

pub type DateTime

@external(erlang, "calendar", "local_time")
pub fn now() -> DateTime

pub fn main() {
  io.debug(now())
}
