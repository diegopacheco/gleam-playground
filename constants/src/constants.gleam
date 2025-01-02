import gleam/io

const pi: Float = 3.14159

const ints: List(Int) = [1, 2, 3]

const floats = [1.1, 2.2, 3.3]

pub fn main() {
  io.debug(pi)
  io.debug(ints)
  io.debug(ints == [1, 2, 3])

  io.debug(floats)
  io.debug(floats == [1.1, 2.2, 3.3])
}
