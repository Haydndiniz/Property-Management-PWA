# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.where(email: 'admin@example.com')
    .first_or_create(
      password: 'password',
      role: 'admin'
    )

Property.first_or_create(
  name: 'property 1',
  description: 'lorem ipsum dolor sit a met',                        
  property_type: 0,
  address: '001001'
)
