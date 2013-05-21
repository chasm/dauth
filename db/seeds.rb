User.destroy_all

puts "Running db:seed!"

admin = Role.create(name: "admin")
moderator = Role.create(name: "moderator")
author = Role.create(name: "author")

user1 = User.create(
  name: "Admin Guy",
  email: "admin@munat.com",
  password: "!QAZxsw2",
  password_confirmation: "!QAZxsw2"
)

user2 = User.create(
  name: "Moderator Gal",
  email: "moderator@munat.com",
  password: "!QAZxsw2",
  password_confirmation: "!QAZxsw2"
)

user3 = User.create(
  name: "Author Dude",
  email: "author@munat.com",
  password: "!QAZxsw2",
  password_confirmation: "!QAZxsw2"
)

Assignment.create(
  user: user1,
  role: admin
)

Assignment.create(
  user: user2,
  role: moderator
)

Assignment.create(
  user: user3,
  role: author
)
