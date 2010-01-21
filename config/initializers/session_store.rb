# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_blogazine_session',
  :secret      => '7b4373dcd3980a048723ab740a70dea5ffe820bb89f6e0184e62d6adfb3d9972bf844869c3cb804214787e6fc1a96666af5faaf37d5ae9f19693c0c807a855f6'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
