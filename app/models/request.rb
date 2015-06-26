class Request < ActiveRecord::Base
  include DateValidate
  belongs_to :project
  belongs_to :location
  belongs_to :department
  belongs_to :group
  belongs_to :user
  has_many :needed_skills
  has_many :skills, through: :needed_skills
  has_many :responses
  has_many :responders, through: :responses, :source => :user
  accepts_nested_attributes_for :responses
  
  validates :name, presence: true
  validates :description, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :project, presence: true
  validates :department_id, presence: true
  validates :group_id, presence: true
  validates :location_id, presence: true
  validates :user_id, presence: true
  validate :end_date_cannot_be_in_past, :end_date_cannot_be_before_start_date
  
end