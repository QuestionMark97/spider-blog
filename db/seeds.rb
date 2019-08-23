# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



# Users
user = User.create(username: 'Bob', email: 'bob@email.com', password: 'test')
user = User.create(username: 'Sally', email: 'jack@email.com', password: 'test')
user = User.create(username: 'Rick', email: 'rick@email.com', password: 'test')
user = User.create(username: 'Zach', email: 'zach@email.com', password: 'test')
user = User.create(username: 'Nick', email: 'nick@email.com', password: 'test')
user = User.create(username: 'Ben', email: 'ben@email.com', password: 'test')
user = User.create(username: 'Sam', email: 'sam@email.com', password: 'test')
user = User.create(username: 'Sandy', email: 'sandy@email.com', password: 'test')
user = User.create(username: 'Benjamin', email: 'benjamin@email.com', password: 'test')
user = User.create(username: 'Alex', email: 'peter@email.com', password: 'test')
user = User.create(username: 'Andrew', email: 'andrew@email.com', password: 'test')
user = User.create(username: 'Mark', email: 'mark@example.com', password: 'admin', admin: true)

article = Article.create(title: 'Welcome!', description: 'Welcome to the Spider Blog!', user: User.last)
article = Article.create(title: 'This is a neat website', description: 'Has anyone seen Carl?', user: User.find(3))
article = Article.create(title: 'Greetings', description: 'Hello, I am Alex', user: User.find(10))
article = Article.create(title: 'Quick Question', description: 'Anyone know good restaurants in Boston?', user: User.find(5))
article = Article.create(title: 'This is an ok website', description: 'Seriously has anyone seen Carl?', user: User.find(3))
article = Article.create(title: 'Hi I\'m Sam', description: 'Hello everyone I\'m Sam', user: User.find(7))
article = Article.create(title: 'Hi everyone, I\'m new to Rails', description: 'Problem deploying my app to heroku', user: User.find(9))
article = Article.create(title: 'Hello', description: 'Here are some life hacks', user: User.find(4))
article = Article.create(title: 'You Won', description: 'You won a neww carrrrr!', user: User.find(1))
article = Article.create(title: 'Fishing Locations', description: 'Here are the best places to fish', user: User.find(11))
article = Article.create(title: 'First Day', description: 'First day of school is coming up. Here are some school supplies you will need', user: User.find(8))
article = Article.create(title: 'Math Tips', description: 'Here are some neat math tricks', user: User.find(10))
article = Article.create(title: 'Recipe', description: 'Here\s a great recipe I found!', user: User.find(5))
article = Article.create(title: 'Hi', description: 'Some more life hacks for you all', user: User.find(4))
article = Article.create(title: 'Help', description: 'Any solutions to this problem I\'m having with my python program?', user: User.find(10))
article = Article.create(title: 'My name is Sally', description: 'Hello my name is Sally', user: User.find(2))
article = Article.create(title: 'Go ahead and give the wheel a spin', description: 'The number to beat is 88', user: User.find(1))
article = Article.create(title: 'Projects', description: 'Here are some home improvement projects for you all', user: User.find(2))
article = Article.create(title: 'Books to Read', description: 'My favorite book is The Great Gatsby', user: User.find(10))
article = Article.create(title: 'Five Innovative Technologies', description: 'Here are some innovative technologies', user: User.find(9))

category = Category.create([{name: 'Sports'}, {name: 'Lifestyle'}, {name: 'Food'},
														{name: 'Home Improvement'}, {name: 'Education'}, {name: 'Books'},
														{name: 'Programming & Development'}, {name: 'Movies & Television'}])






