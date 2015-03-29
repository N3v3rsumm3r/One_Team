class Request < ActiveRecord::Base
  belongs_to :project
  belongs_to :location
  belongs_to :department
  belongs_to :group
  belongs_to :user
  has_many :skills, through: :needed_skills
  has_many :responses
  
  validates :name, presence: true
  validates :description, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :project, presence: true
  validates :department_id, presence: true
  validates :group_id, presence: true
  validates :location_id, presence: true
  validates :user_id, presence: true
end