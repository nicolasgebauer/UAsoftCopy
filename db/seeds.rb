# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

ca = User.create(name: "Claudio", last_name: "Alvarez", email: "calvarez@miuandes.cl", phone: "+56 9 1234 5678", password: "123456")

u1 = User.create(name: "name1", last_name: "last name1", email: "name1@example.com", phone: "+56 9 1111 1111", password: "111111")
u2 = User.create(name: "name2", last_name: "last name2", email: "name2@example.com", phone: "+56 9 2222 2222", password: "222222")
u3 = User.create(name: "name3", last_name: "last name3", email: "name3@example.com", phone: "+56 9 3333 3333", password: "333333")
u4 = User.create(name: "name4", last_name: "last name4", email: "name4@example.com", phone: "+56 9 4444 4444", password: "444444")
u5 = User.create(name: "name5", last_name: "last name5", email: "name5@example.com", phone: "+56 9 5555 5555", password: "555555")

takeAndGo = Company.create(name: "Take & Go", email: "takeAndGo@example.com", phone: "+56 9 6969 6969", ubication: "1er Piso edificio Ingenieria", password: "takeAndGo")

p1 = Product.create(name: "product1", price: 1000, information: "information1", description: "desctiption1", company: takeAndGo)
p2 = Product.create(name: "product2", price: 2000, information: "information2", description: "desctiption2", company: takeAndGo)
p3 = Product.create(name: "product3", price: 3000, information: "information3", description: "desctiption3", company: takeAndGo)
p4 = Product.create(name: "product4", price: 4000, information: "information4", description: "desctiption4", company: takeAndGo)
p5 = Product.create(name: "product5", price: 5000, information: "information5", description: "desctiption5", company: takeAndGo)
p6 = Product.create(name: "product6", price: 6000, information: "information6", description: "desctiption6", company: takeAndGo)
p7 = Product.create(name: "product7", price: 7000, information: "information7", description: "desctiption7", company: takeAndGo)
p8 = Product.create(name: "product8", price: 8000, information: "information8", description: "desctiption8", company: takeAndGo)
p9 = Product.create(name: "product9", price: 9000, information: "information9", description: "desctiption9", company: takeAndGo)
p10 = Product.create(name: "product10", price: 10000, information: "information10", description: "desctiption10", company: takeAndGo)
p11 = Product.create(name: "product11", price: 11000, information: "information11", description: "desctiption11", company: takeAndGo)
p12 = Product.create(name: "product12", price: 12000, information: "information12", description: "desctiption12", company: takeAndGo)
p13 = Product.create(name: "product13", price: 13000, information: "information13", description: "desctiption13", company: takeAndGo)
p14 = Product.create(name: "product14", price: 14000, information: "information14", description: "desctiption14", company: takeAndGo)
p15 = Product.create(name: "product15", price: 15000, information: "information15", description: "desctiption15", company: takeAndGo)
p16 = Product.create(name: "product16", price: 16000, information: "information16", description: "desctiption16", company: takeAndGo)
p17 = Product.create(name: "product17", price: 17000, information: "information17", description: "desctiption17", company: takeAndGo)
p18 = Product.create(name: "product18", price: 18000, information: "information18", description: "desctiption18", company: takeAndGo)
p19 = Product.create(name: "product19", price: 19000, information: "information19", description: "desctiption19", company: takeAndGo)
p20 = Product.create(name: "Coca cola original", price: 1100, information: "Bebida en lata 350cc", description: "Exquisita coca cola refrescante", company: takeAndGo)

i1 = Image.create(image_url: "https://xmayor.cl/wp-content/uploads/2021/06/COCA-COLA-ORIGINAL-350CC-LATA.jpg", product: p20)

o1u1 = Order.create(user: u1)
o2u1 = Order.create(user: u1)

o1u2 = Order.create(user: u2)
o2u2 = Order.create(user: u2)

o1u3 = Order.create(user: u3)

o1u4 = Order.create(user: u4)
o2u4 = Order.create(user: u4)

op1 = OrderProduct.create(order: o1u1, product: p1) # User1
op2 = OrderProduct.create(order: o1u1, product: p2)

op3 = OrderProduct.create(order: o2u1, product: p3)
op4 = OrderProduct.create(order: o2u1, product: p4)
op4 = OrderProduct.create(order: o2u1, product: p5)

op5 = OrderProduct.create(order: o1u2, product: p6) # User 2
op6 = OrderProduct.create(order: o1u2, product: p7)
op7 = OrderProduct.create(order: o1u2, product: p8)
op8 = OrderProduct.create(order: o1u2, product: p9)

op9 = OrderProduct.create(order: o1u3, product: p10) # User 3
op10 = OrderProduct.create(order: o1u3, product: p11)

op12 = OrderProduct.create(order: o1u4, product: p12) # User 4
op13 = OrderProduct.create(order: o1u4, product: p13)
op14 = OrderProduct.create(order: o1u4, product: p14)

op15 = OrderProduct.create(order: o2u4, product: p15)







