class User < ActiveRecord::Base
  attr_accessor :remember_token
  before_save { self.email = email.downcase }
  
  belongs_to :location
  belongs_to :department
  belongs_to :group
  belongs_to :position
  belongs_to :manager, :class_name => 'User', :foreign_key => 'manager_id'
  has_many :current_skills
  has_many :skills, through: :current_skills
  has_many :desired_skills
  has_many :goals, through: :desired_skills, source: :skill
  has_many :projects
  has_many :requests
  has_many :responses
  has_many :assignments
  
  #conca
  def full_name
    "#{first_name} #{last_name}"
  end
  
  # Returns the hash digest of the given string
  def User.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                  BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end
  
  # Returns a random token
  def User.new_token
    SecureRandom.urlsafe_base64
  end
  
  # Remembers a user in the database for use in persistent sessions.
  def remember
    self.remember_token = User.new_token
    update_attribute(:remember_digest, User.digest(remember_token))
  end
  
  # Returns true if the given token matches the digest.
  def authenticated?(remember_token)
    return false if remember_digest.nil?
    BCrypt::Password.new(remember_digest).is_password?(remember_token)
  end
  
  # Forgets a user.
  def forget
    update_attribute(:remember_digest, nil)
  end
  
  def skill_list
    @skill.all.each do |skill|
      skill.name
      check_box_tag  "user[skill_ids][]", skill.id, @user.skill_ids.include?(skill.id)  
    end 
  end

  validates :first_name, presence: true, length: { maximum: 50 }
  validates :last_name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  has_secure_password
  validates :password, length: {minimum: 6}, on: :create
  validates :department_id, presence: true, allow_blank: true, on: :update
  validates :location_id, presence: true, on: :update
  validates :position_id, presence: true, on: :update
  validates :group_id, presence: true, on: :update
  validates :manager_id, presence: true, allow_blank: true, on: :update
  
  
end
