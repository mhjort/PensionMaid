# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_fake_invoicing_session',
  :secret      => 'd27bbf32ec5e9c75ac20803a9949e23235dedf5d8aa2a86a83e7620384cecb742dac295eacc346cb9db2d876bd303758a9d68bb9189c67f7bc75502de094e35e'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
