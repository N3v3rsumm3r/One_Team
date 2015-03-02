class User < ActiveRecord::Base
  belongs_to :location
  belongs_to :department
  belongs_to :group
  belongs_to :position
end
