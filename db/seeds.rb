
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Woman.destroy_all
Man.destroy_all
Relationship.destroy_all

hannah_b = Woman.create(name: "Hannah B.", age: 25, hometown: "Alabama")
hannah_g = Woman.create(name: "Hannah G.", age: 25, hometown: "Alabama")
demi = Woman.create(name: "Demi", age: 23, hometown: "Texas")
katie = Woman.create(name: "Katie", age: 30, hometown: "California")

jed = Man.create(name: "Jed", age: 25, hometown: "Tennessee")
dylan = Man.create(name: "Dylan", age: 27, hometown: "California")
mike = Man.create(name: "Mike", age: 31, hometown: "Texas")
blake = Man.create(name: "Blake", age: 32, hometown: "California")

rel1 = Relationship.create(woman: hannah_b, man: jed, status: "over", start_date: Date.new(2018, 03, 02), end_date: Date.new(2019, 05, 10))
byebug
rel2 = Relationship.create(woman: demi, man: mike, status: "dating")
rel3 = Relationship.create(woman: hannah_g, man: dylan, status: "engaged")
rel4 = Relationship.create(woman: hannah_g, man: blake, status: "over")
rel5 = Relationship.create(woman: katie, man: jed, status: "dating")
rel6 = Relationship.create(woman: demi, man: blake, status: "over")