# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
file = File.open("/Users/kevinmircovich/Documents/code/prezi/test/fixtures/preszies.json",  "r")
contents = file.read
prezies = JSON.parse(contents)

puts "Creating Prezies and creators"

prezies.each do |presentation|

  creator = Creator.find_or_create_by!( 
    name: presentation["creator"]["name"], 
    profile_url: presentation["creator"]["profileUrl"]
    )

  Presentation.create!(
  primary_id: presentation["id"], 
  title: presentation["title"], 
  thumbnail: presentation["thumbnail"], 
  creator_id: creator.id, 
  created_at: presentation["createdAt"]
  )
end

puts "#{prezies.count} presentations created" 




