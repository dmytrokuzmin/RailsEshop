# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Admin.create email: 'admin@localhost.local', password: '123qwe'

Category.create name: 'Mobile phones', description: "With the development of the times, the cell phone has almost become the essential tool of communication in our daily life. From non-smart to smart, smart phones go into each family will be the trend of the mobile phone industry development.
Smart phones, like personal computers, which people can operate any intelligent action with, such as watching movies, playing games, shopping online and reading e-books (eBooks capacity can be infinite, as long as enough memory)and so on. However, to meet people's needs, the phone provided with a separate operating system, the user can install the program includes games and other program provided by the third-party service provider to continue and expand the functionality of the phone according to their needs. In addition, it provides the fuselage memory and extendable storage; people can download apps and cache videos arbitrary. Smartphones no exception, with the separate operating system, most of comes with big-screen, which is touch capacitive screen or resistive screen, powerful and high availability. However, as to mobile security, graphics unlock, passwords unlock, fingerprint recognition technologies have appeared one by one, and that makes the phone more intelligent.
Thus, smartphones becoming popular is an inevitable trend of mobile phones development. The trend of purchasing mobile phones online is self-evident. To find oneself a new suitable and best mobile phone you can browse on Tinydeal, where offers a variety of best cell phones and mobile phone accessories that on different brands or different models running in the different operating system. Most cell phones running with android operating system or windows operating system, you can pick and choose according to your needs. Mobile phone promotional activities will be from time to time waiting for you coming on China wholesale online store, do not miss the chance!"

Category.create name: 'Notebooks', description: "Shop all new laptops at Best Buy.  Compare and read reviews on the vast selection of new PC and Mac laptops. Purchase online and get great deals on RubyEshop"
Category.create name: 'Accessories', description: "Nothing to do here"

Manufacturer.create name: 'Apple', description: "Apple is an American multinational technology company headquartered in Cupertino, California, a suburb of San Jose, that designs, develops, and sells consumer electronics, computer software, and online services."
Manufacturer.create name: 'Samsung', description: "Samsung is a South Korean multinational conglomerate headquartered in Samsung Town, Seoul. It comprises numerous affiliated businesses, most of them united under the Samsung brand, and is the largest South Korean chaebol"