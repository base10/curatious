# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_curatious_session',
  :secret      => 'eb640362aff6b493fb14c03ed5be05d0655482b1dfa6a90e66efaa9d8f10379ccc311e703c6923ede4ac076cf3a8c162605c8cfd8d69cdb1cfe9cb0f772b3e12'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
