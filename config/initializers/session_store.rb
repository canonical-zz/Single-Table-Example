# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_SingleTableExample_session',
  :secret      => '094d7c8ddeb066543e529e920c6acb81554d829168b7cff25e90051504c170fecf53c59867014f16e70f575d1666a5179c63896c2f1efd7edbc19b7fe677c68b'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
