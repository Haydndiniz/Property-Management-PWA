# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.where(email: 'admin@example.com')
    .first_or_create(
      first_name: 'admin',
      last_name: 'admin',
      password: 'password',
      role: 'admin'
    )
User.where(email: 'manager@example.com')
    .first_or_create(
      first_name: 'manager',
      last_name: 'manager',
      password: 'password',
      role: 'manager'
    )
User.where(email: 'staff@example.com')
    .first_or_create(
      first_name: 'staff',
      last_name: 'Staff',
      password: 'password',
      role: 'staff'
    )
Property.first_or_create(
  name: 'property 1',
  description: 'lorem ipsum dolor sit a met',
  property_type: 0,
  address: '001001'
)
Unit.first_or_create(
  unit_name: 'Unit 1',
  description: 'lorem ipsum dolor sit a met',
  unit_type: 0
)
Tenant.where(first_name: 'tenant',
             last_name: 'tenant',
             email: 'tenant@example.com'
)


