import gleam/bytes_tree.{type BytesTree}
import gleam/erlang/process
import gleam/http/cowboy
import gleam/http/request.{type Request}
import gleam/http/response.{type Response}
import gleam/io

// Define a HTTP service
//
pub fn my_service(request: Request(t)) -> Response(BytesTree) {
  let body = bytes_tree.from_string("Hello, world!")

  response.new(200)
  |> response.prepend_header("made-with", "Gleam")
  |> response.set_body(body)
}

// Start it on port 3000!
//
pub fn main() {
  io.debug("Starting Cowboy HTTP server on port 3000")
  cowboy.start(my_service, on_port: 3000)
  process.sleep_forever()
}
