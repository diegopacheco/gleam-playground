import gleam/int
import gleam/io
import gleam/list
import glearray.{type Array}

pub fn main() {
  let list = [1, 2, 3, -8, 8954]

  let res =
    list
    |> glearray.from_list
    |> glearray.to_list
    |> list.map(int.to_string)

  io.debug(res)
}
