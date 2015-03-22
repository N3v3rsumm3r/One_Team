class Request < ActiveRecord::Base
  belongs_to :project
  belongs_to :location
  belongs_to :department
  belongs_to :group
  belongs_to :user
  has_many :needed_skills
  has_many :needed_skills, through: :skills
end