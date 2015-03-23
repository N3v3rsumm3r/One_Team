# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Department.create(name: 'IT')

Location.create(name: 'Chicago')

Position.create(name: 'Engineer')

Group.create(name: 'Development')

User.create(first_name: 'Spencer', last_name: 'Wilow', email: 'swilow@example.com', department_id: '1', location_id: '1', position_id: '1', group_id: '1', manager: 'Anne Chen')