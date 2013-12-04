# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


user1 = User.create! ({
  email: "tester@test.ca",
  name: "Foo Bar",
  password: "tester",
  password_confirmation: "tester"
  })

user2 = User.create! ({
  email: "moinvirani@gmail.com",
  name: "Moin Virani",
  password: "foobar",
  password_confirmation: "foobar"
  })

user3 = User.create! ({
  email: "nothing@gmail.com",
  name: "nothing",
  password: "nothing",
  password_confirmation: "nothing",
  })

user4 = User.create! ({
  email: "user4@gmail.com",
  name: "user4",
  password: "userpooser",
  password_confirmation: "userpooser",
  })



5.times do |i|

  Project.create ({
  title: "Test's Amazing Project Title",
  decription: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim.",
  goal: (rand * 10000).to_i,
  start_date: Date.today,
  end_date: Date.today + 20,
  user_id: 1,
  category_id: category_ids.sample
  })  
end


5.times do |i|

  Project.create ({
  title: "Moin's Amazing Project Title",
  decription: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim.",
  goal: (rand * 10000).to_i,
  start_date: Date.today,
  end_date: Date.today + 20,
  user_id: 2,
  category_id: category_ids.sample
  })  
end


5.times do |i|

  Project.create ({
  title: "User4's Project Title" ,
  decription: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim.",
  goal: (rand * 10000).to_i,
  start_date: Date.today,
  end_date: Date.today + 20,
  user_id: 4,
  category_id: category_ids.sample
  })  
end










