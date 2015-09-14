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
  
Proficiency.create!([
  {name: "None", level: 1},
  {name: "Beginner", level: 2},
  {name: "Intermediate", level: 3},
  {name: "Advanced", level: 4},
  {name: "Expert", level: 5}
  ])

User.create!([
  {first_name: "Anne", last_name: "Chen", email: "achen@example.com", department_id: "1", location_id: "1", position_id: "3", group_id: "1", years_with_company: "8", password: "Testpass", password_confirmation: "Testpass", admin: true},
  ])

User.create!([
  {first_name: "Spencer", last_name: "Wilow", email: "swilow@example.com", department_id: "1", location_id: "1", position_id: "1", group_id: "1", years_with_company: "3", password: "anex123", password_confirmation: "anex123", admin: false},
  ])

User.create!([
  {first_name: "Maria", last_name: "Del Toro", email: "mdeltoro@example.com", department_id: "1", location_id: "2", position_id: "4", group_id: "2", years_with_company: "6", password: "anex123", password_confirmation: "anex123", admin: false},
  ])

User.create!([
  {first_name: "Francis", last_name: "Telluro", email: "ftelluro@example.com", department_id: "1", location_id: "2", position_id: "3", group_id: "1", years_with_company: "4", password: "anex123", password_confirmation: "anex123", admin: true},
  ])

Project.create!([
  {name: 'Example Project 1', description: 'An example of how a real project may look', start_date: '2015-03-28', end_date: '2018-03-29', user_id: '1'}
  ])
  
Project.create!([
  {name: 'Example Project 2', description: 'An example of how a real project may look', start_date: '2015-03-28', end_date: '2018-03-29', user_id: '4'}
  ])
  
Project.create!([
  {name: 'Example Project 3', description: 'An example of how a real project may look', start_date: '2015-03-28', end_date: '2018-03-29', user_id: '2'}
  ])  
Request.create!([
  {name: 'Open Request', description: 'A request created by Anne Chen that is open', start_date: '2015-03-28', end_date: '2018-03-29', open: true, project_id: '1', department_id: '1', group_id: '1', location_id: '3', user_id: '1'}
  ])
  
Request.create!([
  {name: 'Open Request 2', description: 'A request created by Anne Chen that is open', start_date: '2015-03-28', end_date: '2018-03-29', open: true, project_id: '2', department_id: '1', group_id: '1', location_id: '3', user_id: '1'}
  ])
  
Request.create!([
  {name: 'Closed Request', description: 'A request created by Anne Chen that is closed', start_date: '2015-03-28', end_date: '2018-03-29', open: false, project_id: '1', department_id: '1', group_id: '1', location_id: '3', user_id: '1'}
  ])
  
Request.create!([
  {name: 'Closed Request 2', description: 'A request created by Anne Chen that is closed', start_date: '2015-03-28', end_date: '2018-03-29', open: false, project_id: '2', department_id: '1', group_id: '1', location_id: '3', user_id: '1'}
  ]) 
  
Request.create!([
  {name: 'Different User Request', description: 'A request created by Spencer Wilow that is open', start_date: '2015-03-28', end_date: '2018-03-29', open: true, project_id: '1', department_id: '1', group_id: '1', location_id: '3', user_id: '2'}
  ])
  
Request.create!([
  {name: 'Another User Request', description: 'A request created by Maria Del Toro that is open', start_date: '2015-03-28', end_date: '2018-03-29', open: true, project_id: '2', department_id: '1', group_id: '1', location_id: '3', user_id: '3'}
  ])