import gleam/io

pub fn main() {
  io.debug(double(10))
}

pub fn double(a: Int) -> Int {
  multiply(a, 2)
}

fn multiply(a: Int, b: Int) -> Int {
  a * b
}
