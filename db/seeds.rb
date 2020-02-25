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

jed = Woman.create(name: "Jed", age: 25, hometown: "Tennessee")
dylan = Woman.create(name: "Dylan", age: 27, hometown: "California")
mike = Woman.create(name: "Mike", age: 31, hometown: "Texas")

rel1 = Relationship.create(woman_id: hannah_b, man_id: jed, status: "over")
rel2 = Relationship.create(woman_id: demi, man_id: mike, status: "dating")
rel3 = Relationship.create(woman_id: hannah_g, man_id: dylan, status: "engaged")