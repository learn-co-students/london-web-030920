# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Started seeding #{Time.now}"

Doctor.destroy_all
10.times do
  doc = Doctor.create(
    {
      name: Faker::Name.last_name,
      speciality: Faker::Cannabis.health_benefit,
      age: (27..60).to_a.sample,
    }
  )
  puts "created doctor: #{doc.id}, #{doc.name}"
end

Patient.destroy_all

doctors = Doctor.all.map { |doctor| doctor.id }

10.times do
  patient = Patient.create({
    name: Faker::Name.last_name,
    doctor_id: doctors.sample,
  })
  puts "created patient: #{patient.id}, #{patient.name}"
end

User.create(name: "daniel", password: "daniel123")
User.create(name: "gabe", password: "gabe123")

10.times do
  Visit.create(user_id: User.first.id, doctor_id: doctors.sample)
end

5.times do
  Visit.create(user_id: User.second.id, doctor_id: doctors.sample)
end

puts "Seed complete #{Time.now}"
