Devise.setup do |config|
  config.all = [:authenticatable, :rememberable, :validatable]
  config.remember_for = 52.weeks
  config.orm = :active_record
end
