# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
#
Route.create(route: "A", crew: "Blue", name: "Duke Starbucks", street: "2301 Erwin Rd", city: "Durham", state: "NC", zip: "27705")
Route.create(route: "A", crew: "Blue", name: "Willowdale Starbucks", street: "3801 Guess Rd", city: "Durham", state: "NC", zip: "27705")
Route.create(route: "A", crew: "Blue", name: "Kroger Starbucks", street: "3457 Hillsborough Rd", city: "Durham", state: "NC", zip: "27705")
Route.create(route: "C", crew: "Red", name: "New York Starbucks", street: "1000 Empire Rd", city: "NY", state: "NY", zip: "10000")



Task.create(route_id: 1, task_name: "mulch", completed: false)
Task.create(route_id: 2, task_name: "mow grass", completed: false)
Task.create(route_id: 3, task_name: "edging", completed: false)
Task.create(route_id: 2, task_name: "pruning", completed: false)
Task.create(route_id: 3, task_name: "mulch", completed: false)
