import gleam/float
import gleam/io
import gleam/string

pub fn main() {
  let quantity = 5.0
  let unit_price = 10.0
  let discount = 0.2

  // Using the regular label syntax
  calculate_total_cost(
    quantity: quantity,
    unit_price: unit_price,
    discount: discount,
  )

  // Using the shorthand syntax
  let res = calculate_total_cost(quantity:, unit_price:, discount:)
  io.println(string.concat(["Total cost: ", float.to_string(res)]))
}

fn calculate_total_cost(
  quantity quantity: Float,
  unit_price price: Float,
  discount discount: Float,
) -> Float {
  let subtotal = quantity *. price
  let discount = subtotal *. discount
  subtotal -. discount
}
