User.create!(name: 'admin',
             email: 'admin@standupchick.com',
             password: 'foobar',
             password_confirmation: 'foobar',
             admin: true)

99.times do |n|
  name = Faker::Name.name
  email = "example-#{n + 1}@standupchick.org"
  password = 'password'
  User.create!(name: name,
               email: email,
               password: password,
               password_confirmation: password)
end
