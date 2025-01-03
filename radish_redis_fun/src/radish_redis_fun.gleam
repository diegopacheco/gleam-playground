import gleam/io
import radish
import radish/list

pub fn main() {
  let assert Ok(client) =
    radish.start("localhost", 6379, [
      radish.Timeout(128),
      radish.Auth("password"),
    ])

  let _ = radish.set(client, "requests", "64", 128)
  let _ = radish.expire(client, "requests", 60, 128)
  let _ = radish.decr(client, "requests", 128)

  let _ =
    list.lpush(
      client,
      "names",
      ["Gary", "Andy", "Nicholas", "Danny", "Shaun", "Ed"],
      128,
    )
  let res = list.lpop(client, "names", 128)

  io.debug(radish.get(client, "requests", 128))
  io.debug(res)
}
