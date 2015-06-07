class Project < ActiveRecord::Base
  include DateValidate
  belongs_to :user
  has_many :requests
  
  validates :name, presence: true
  validates :description, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :user_id, presence: true
  validate :end_date_cannot_be_in_past, :end_date_cannot_be_before_start_date
  

  
end
