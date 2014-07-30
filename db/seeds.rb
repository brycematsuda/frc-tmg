# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
admin = Admin.create :email => 'seed@example.com', :password => 'seed'

Category.create [{:name => 'Events'}, {:name => 'Teams'},
                 {:name => 'People'}]

admin.terms.create :phrase => 'Chief Delphi', :definition => 'The biggest and most popular FIRST discussion forum. Can be found at http://www.chiefdelphi.com.'
