# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
ReceiptReaper::Application.initialize!

USERNAME = ENV['USERNAME'] || "username"
PASSWORD = ENV['PASSWORD'] || "password"
