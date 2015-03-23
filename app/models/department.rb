class Department < ActiveRecord::Base
  has_many :requests
end
