class Project < ActiveRecord::Base
  belongs_to :user
  has_many :requests
  
  validates :name, presence: true
  validates :description, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :user_id, presence: true
end
