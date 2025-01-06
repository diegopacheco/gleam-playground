import gleam/io
import gleam/string

pub type User {
  User(name: String, age: Int, admin: Bool)
}

pub fn make_admin(person: User) {
  User(..person, admin: True)
}

pub fn user_to_string(user: User) -> String {
  string.concat([
    "User(name: ",
    user.name,
    ", age: ",
    string.inspect(user.age),
    ", admin: ",
    string.inspect(user.admin),
    ")",
  ])
}

pub fn main() {
  let user = User("Alice Doe", 30, False)
  let admin = make_admin(user)
  io.print(user_to_string(admin))
}
