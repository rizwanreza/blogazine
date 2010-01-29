class Post < ActiveRecord::Base
  has_many :comments
  
  validates_presence_of :slug
  validates_format_of :slug, :with => /^[\w\d-]+$/, :message => "is invalid"
  validates_uniqueness_of :slug, :message => "must be unique"
  
  mount_uploader :sass, SassUploader

  named_scope :published, :conditions => { :published => true }
  
  named_scope :recent, :limit => 5, :order => "created_at DESC"
end
