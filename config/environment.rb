# Load the Rails application.
require_relative 'application'

api_key = File.join(Rails.root, 'config', 'listen_notes_api.rb')
load(api_key) if File.exist?(api_key)

# Initialize the Rails application.
Rails.application.initialize!
