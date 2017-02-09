# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Admin.create email: 'admin@localhost.local', password: '123qwe'

Category.create name: 'Mobile phones', description: "With the development of the times, the cell phone has almost become the essential tool of communication in our daily life. From non-smart to smart, smart phones go into each family will be the trend of the mobile phone industry development."

Category.create name: 'Notebooks', description: "Shop all new laptops at Best Buy.  Compare and read reviews on the vast selection of new PC and Mac laptops. Purchase online and get great deals on RubyEshop"
Category.create name: 'Accessories', description: "Nothing to do here"

Manufacturer.create name: 'Apple', description: "Apple is an American multinational technology company headquartered in Cupertino, California, a suburb of San Jose, that designs, develops, and sells consumer electronics, computer software, and online services."
Manufacturer.create name: 'Samsung', description: "Samsung is a South Korean multinational conglomerate headquartered in Samsung Town, Seoul. It comprises numerous affiliated businesses, most of them united under the Samsung brand, and is the largest South Korean chaebol"