# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_StockControl_session',
  :secret      => '608b91110d14fd4afb0d16d2b4cde4cee8ba80fb9714df31afc4c040eb3be24cd61a9e08e826d49a77b34bdeb67589748d0d27edd5b4e877da9b98f80e96cacd'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
