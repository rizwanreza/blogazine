class Comment < ActiveRecord::Base
  belongs_to :post
  validates_presence_of :name, :value
  validates_presence_of :email
  validates_presence_of :body
end
