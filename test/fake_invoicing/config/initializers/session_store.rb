# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_fake_invoicing_session',
  :secret      => '7c43029974cf73eb1537189148686e383d4b48c6cb29476fe7d6c7a81e8899ce66eaccea8c3a8c7b88bf003ef3608171595323f8530f5c2772466eec6f1831ab'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
