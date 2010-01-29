class Comment < ActiveRecord::Base
  belongs_to :post
  validates_presence_of :name
  validates_presence_of :email
  validates_presence_of :body
  
  named_scope :recent, :limit => 5, :order => "created_at DESC"
end
