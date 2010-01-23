class Admin < ActiveRecord::Base
  devise :authenticatable, :rememberable, :validatable
  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation
end
