class User < ActiveRecord::Base
  belongs_to :location
  belongs_to :department
  belongs_to :group
  belongs_to :position
  has_many :current_skills, through: :skills
  has_many :desired_skills, through: :skills
  has_many :projects
  has_many :requests
  has_many :responses
  has_many :assignments
  
  def full_name
    "#{first_name} #{last_name}"
  end
end
