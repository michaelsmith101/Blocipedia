# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

20.times do
    Wiki.create!(
        title: 'Test Title',
        body: 'Test Body',
        private: false
    ) 
end

5.times do
    Wiki.create!(
        title: 'Private Title',
        body: 'Private Body',
        private: true
    ) 
end

p "#{Wiki.count} wikis created"