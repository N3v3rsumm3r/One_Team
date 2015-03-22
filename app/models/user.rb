class User < ActiveRecord::Base
  belongs_to :location
  belongs_to :department
  belongs_to :group
  belongs_to :position
  has_many :current_skills
  has_many :skills, through: :current_skills
  has_many :skills, through: :desired_skills
  has_many :projects
  has_many :requests
  has_many :requests, through: :projects
  
  def full_name
    "#{first_name} #{last_name}"
  end
end
