# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
MULTIPLIER = 10

def create_message
  m = Message.new
  m.from = Faker::Internet.email
  m.to = 'johnandkelseyscoolproject@gmail.com'
  m.subject = Faker::Hipster.sentence
  m.body = Faker::Hipster.paragraph
  m.save!
end

MULTIPLIER.times do
  create_message
end