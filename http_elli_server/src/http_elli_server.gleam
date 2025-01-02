import gleam/bytes_tree
import gleam/http/elli
import gleam/http/request.{type Request}
import gleam/http/response.{type Response}
import gleam/io

// Define a HTTP service
//
pub fn my_service(_request: Request(t)) -> Response(bytes_tree.BytesTree) {
  let body = bytes_tree.from_string("Hello, world!")

  response.new(200)
  |> response.prepend_header("made-with", "Gleam")
  |> response.set_body(body)
}

// Start it on port 3000 using the Elli web server
//
pub fn main() {
  io.println("Starting elli/http server on port 3000")
  elli.become(my_service, on_port: 3000)
}
