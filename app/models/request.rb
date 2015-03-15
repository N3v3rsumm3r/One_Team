class Request < ActiveRecord::Base
  belongs_to :projects
  has_many :needed_skills
  has_many :needed_skills, through: :skills
end