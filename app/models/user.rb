class User < ActiveRecord::Base
  before_save { self.email = email.downcase }
  
  belongs_to :location
  belongs_to :department
  belongs_to :group
  belongs_to :position
  has_many :current_skills
  has_many :skills, through: :current_skills
  has_many :desired_skills
  has_many :projects
  has_many :requests
  has_many :responses
  has_many :assignments
  
  def full_name
    "#{first_name} #{last_name}"
  end
  
  validates :first_name, presence: true, length: { maximum: 50 }
  validates :last_name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  validates :department_id, presence: true
  validates :location_id, presence: true
  validates :position_id, presence: true
  validates :group_id, presence: true
  validates :manager, presence: true
  validates :years_with_company, presence: true
end
