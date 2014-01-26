# Used to seed the database with random data

# see http://rubydoc.info/github/stympy/faker/master/frames for faker reference
require 'faker'
# see https://github.com/bmabey/database_cleaner for database cleaner reference
require 'database_cleaner'

# to run : rake dev:task_to_run
namespace :dev do
  
  task seed_hazards: :environment do    
    DatabaseCleaner.strategy = :truncation, {:only => ["hazards"]}
    DatabaseCleaner.start
    DatabaseCleaner.clean
    
    # Create 5 hazards with a random name
    5.times do 
      Hazard.create(
        name: Faker::Name.name,
        risks: Faker::Lorem.paragraph,
        image_url: "http://myzerowaste.com/wp-content/uploads/2009/07/fridge.jpg",
        prevention: Faker::Lorem.paragraph
      )
    end
  end
  
end