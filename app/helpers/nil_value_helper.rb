module NilValueHelper
  
  #check nil value for display in views.
  def request_if_missing(user, association, attribute)
    user.try(association).try(attribute) || "Please update your profile."
  end
  
end