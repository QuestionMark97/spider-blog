# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



# Users
user = User.create([{username: 'Bob', email: 'bob@email.com', password: 'test'},
										{username: 'Sally', email: 'jack@email.com', password: 'test'},
										{username: 'Rick', email: 'rick@email.com', password: 'test'},
										{username: 'Zach', email: 'zach@email.com', password: 'test'},
										{username: 'Nick', email: 'nick@email.com', password: 'test'},
										{username: 'Ben', email: 'ben@email.com', password: 'test'},
										{username: 'Sam', email: 'sam@email.com', password: 'test'},
										{username: 'Sandy', email: 'sandy@email.com', password: 'test'},
										{username: 'Benjamin', email: 'benjamin@email.com', password: 'test'},
										{username: 'Alex', email: 'peter@email.com', password: 'test'},
										{username: 'Andrew', email: 'andrew@email.com', password: 'test'},
										{username: 'Mark', email: 'mark@example.com', password: 'admin', admin: true}])

article1 = Article.create(title: 'Welcome!', description: 'Welcome to the Spider Blog!', user: User.last)
article2 = Article.create(title: 'This is a neat website', description: 'Has anyone seen Carl?', user: User.find(3))
article3 = Article.create(title: 'Greetings', description: 'Hello, I am Alex', user: User.find(10))
article4 = Article.create(title: 'Quick Question', description: 'Anyone know good restaurants in Boston?', user: User.find(5))
article5 = Article.create(title: 'This is an ok website', description: 'Seriously has anyone seen Carl?', user: User.find(3))
article6 = Article.create(title: 'Hi I\'m Sam', description: 'Hello everyone I\'m Sam', user: User.find(7))
article7 = Article.create(title: 'Hi everyone, I\'m new to Rails', description: 'Problem deploying my app to heroku', user: User.find(9))
article8 = Article.create(title: 'Hello', description: 'Here are some life hacks', user: User.find(4))
article9 = Article.create(title: 'You Won', description: 'You won a neww carrrrr!', user: User.find(1))
article10 = Article.create(title: 'Fishing Locations', description: 'Here are the best places to fish', user: User.find(11))
article11 = Article.create(title: 'First Day', description: 'First day of school is coming up. Here are some school supplies you will need', user: User.find(8))
article12 = Article.create(title: 'Math Tips', description: 'Here are some neat math tricks', user: User.find(10))
article13 = Article.create(title: 'Recipe', description: 'Here\s a great recipe I found!', user: User.find(5))
article14 = Article.create(title: 'Hi there', description: 'Some more life hacks for you all', user: User.find(4))
article15 = Article.create(title: 'Help', description: 'Any solutions to this problem I\'m having with my python program?', user: User.find(10))
article16 = Article.create(title: 'My name is Sally', description: 'Hello my name is Sally', user: User.find(2))
article17 = Article.create(title: 'Go ahead and give the wheel a spin', description: 'The number to beat is 88', user: User.find(1))
article18 = Article.create(title: 'Projects', description: 'Here are some home improvement projects for you all', user: User.find(2))
article19 = Article.create(title: 'Books to Read', description: 'My favorite book is The Great Gatsby', user: User.find(10))
article20 = Article.create(title: 'Five Innovative Technologies', description: 'Here are some innovative technologies', user: User.find(9))

category1 = Category.create(name: 'Sports')
category2 = Category.create(name: 'Lifestyle')
category3 = Category.create(name: 'Food')
category4 = Category.create(name: 'Home Improvement')
category5 = Category.create(name: 'Education')
category6 = Category.create(name: 'Books')
category7 = Category.create(name: 'Programming & Development')
category8 = Category.create(name: 'Movies & Television')

category1.articles << article10
category2.articles << article8 << article10 << article13 << article14 << article18
category3.articles << article4 << article13
category4.articles << article18
category5.articles << article7 << article8 << article11 << article12 << article13 << article14 << article15
category6.articles << article19
category7.articles << article7 << article15 << article20
category8.articles << article2 << article5 << article9 << article17






