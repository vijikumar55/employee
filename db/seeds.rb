# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

contact = Contact.create(first_name: 'Rohit', last_name: 'Vishnu', age: 18, email: 'rohit@gmail.com')
address = contact.addresses.create(door_no: 1, city: 'Bengaluru', state: 'Karnataka', country: 'India')
phone_number = contact.phonenumbers.create(phone_number: '6704358999')

contact1 = Contact.create(first_name: 'Shannon', last_name: 'Polo', age: 35, email: 'polo@gmail.com')
address1 = contact1.addresses.create(door_no: 2, city: 'Bengalore', state: 'Karnataka', country: 'India')
phone_number1 = contact1.phonenumbers.create(phone_number: '8904358999')

contact2 = Contact.create(first_name: 'Murugan', last_name: 'Kumar', age: 28, email: 'murugan@gmail.com')
address2 = contact2.addresses.create(door_no: 21, city: 'Madurai', state: 'Tamil Nadu', country: 'India')
phone_number2 = contact2.phonenumbers.create(phone_number: '7564358999')

contact3 = Contact.create(first_name: 'Kani', last_name: 'Mozhi', age: 22, email: 'kanimozhi@gmail.com')
address3 = contact3.addresses.create(door_no: 717, city: 'Bengalore', state: 'Karnataka', country: 'India')
phone_number3 = contact3.phonenumbers.create(phone_number: '9904358999')

contact4 = Contact.create(first_name: 'Divya', last_name: 'Priya', age: 18, email: 'divya@gmail.com')
address4 = contact4.addresses.create(door_no: 676, city: 'Chennai', state: 'Tamil Nadu', country: 'India')
phone_number4 = contact4.phonenumbers.create(phone_number: '6504358999')