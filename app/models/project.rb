class Project < ActiveRecord::Base
  belongs_to :user
  has_many :requests
  
  validates :name, presence: true
  validates :description, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :user_id, presence: true
  validate :end_date_cannot_be_in_past, :end_date_cannot_be_before_start_date
  
  def end_date_cannot_be_in_past
    if end_date.present? && end_date < Date.today
      errors.add(:end_date, "cannot be in the past.")
    end
  end
  
  def end_date_cannot_be_before_start_date
    if end_date < start_date
      errors.add(:end_date, "cannot be before the start date")
    end
  end
  
end
