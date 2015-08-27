module DateValidate
  extend ActiveSupport::Concern
  
  def end_date_cannot_be_in_past
    if end_date.present? && end_date < Date.today
      errors.add(:end_date, "cannot be in the past.")
    end
  end
  
  def end_date_cannot_be_before_start_date
    if end_date.nil? || start_date.nil?
      
    elsif end_date < start_date
      errors.add(:end_date, "cannot be before the start date")
    end
  end
  
end