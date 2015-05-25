# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Department.create!([
  {name: "IT"}
])

Location.create!([
  {name: "Chicago"},
  {name: "Boston"},
  {name: "Houston"},
  {name: "San Francisco"},
  {name: "London"},
  {name: "Mumbai"}
  ])

Position.create!([
  {name: "Engineer"},
  {name: "Analyst"},
  {name: "Project Lead"},
  {name: "UI Specialist"}
  ])

Group.create!([
  {name: "Development"},
  {name: "Interface Design"},
  {name: "QA"},
  {name: "Infrastructure"}
  ])

Skill.create!([
  {name: "Java"},
  {name: "C++"},
  {name: "C#"},
  {name: "MS SQL Server"},
  {name: "MySQL"},
  {name: "PHP"},
  {name: "Ruby"},
  {name: "HTML"},
  {name: "CSS"},
  {name: "Flash"},
  {name: "ASP.Net"},
  {name: "Test Script Writing"},
  {name: "Functional Testing"},
  {name: "Performance Testing"},
  {name: "Windows"}
  ])

User.create!([
  {first_name: "Anne", last_name: "Chen", email: "achen@example.com", department_id: "1", location_id: "1", position_id: "3", group_id: "1", years_with_company: "8", password: "Testpass", password_confirmation: "Testpass", admin: true},
  ])

Project.create!([
  {name: 'Example Project 1', description: 'An example of how a real project may look', start_date: '2015-03-28', end_date: '2018-03-29', user_id: '1'}
  ])