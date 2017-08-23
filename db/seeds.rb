# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# require 'faker'

# 50.times do
#   contacts = Contact.new(
#     first_name: Faker::Name.name,
#     last_name: Faker::GameofThrones.house,
#     email: Faker::GameofThrones.city,
#     phone_number: Faker::PhoneNumber.phone_number,
#   )
# end

# groups = Group.all
# contacts = Contact.all

# 3.times do
#   contacts.each do |contact|
#     group = ContactGroup.new(contact_id: contact.id, group_id: groups.sample.id)
#     group.save!
#   end
# end

groups = Group.all

groups.each do |group|
  new_group = group.update(name: group.name.downcase)
end