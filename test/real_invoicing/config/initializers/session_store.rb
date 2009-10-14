# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_real_invoicing_session',
  :secret      => 'd5fe024a1af31d25ac14fb35631b9b34cb1dda3db3305d35e1d24f79dc32a226ed63fb94e33c8d8acbafad3a6b1289d83afd02b1682254655c72ded7f99a5d89'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
