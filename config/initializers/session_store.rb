# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_UrlLinkSharing_session',
  :secret      => 'fb6a3303ce1d407c84979ce78f9e1e3e1fae44f161cc6c33d7c3deb4380bffdcc5c8e85f79d683a44d8cfde4a356e06633931fcf9b043953d6e66737039e98b9'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
