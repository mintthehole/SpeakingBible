# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Language.delete_all
Book.delete_all
Language.create(:title => "Tamil")
Language.create(:title => "English")
Language.create(:title => "Hindi")
Language.create(:title => "Malayalam")

require File.expand_path('../books_seeds.rb', __FILE__)