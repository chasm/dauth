User.destroy_all

puts "Running db:seed!"

user1 = User.create(
  name: "Chas.",
  email: "chas@munat.com",
  password: "!QAZxsw2",
  password_confirmation: "!QAZxsw2"
)

user2 = User.create(
  name: "Wm.",
  email: "wm@munat.com",
  password: "!QAZxsw2",
  password_confirmation: "!QAZxsw2"
)

user3 = User.create(
  name: "Ed.",
  email: "ed@munat.com",
  password: "!QAZxsw2",
  password_confirmation: "!QAZxsw2"
)
