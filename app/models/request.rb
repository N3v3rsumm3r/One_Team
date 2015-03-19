class Request < ActiveRecord::Base
  belongs_to :projects
  belongs_to :locations
  belongs_to :departments
  belongs_to :groups
  belongs_to :users
  has_many :needed_skills
  has_many :needed_skills, through: :skills
end