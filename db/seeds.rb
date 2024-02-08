# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end



# Créer des doctors
doctor1 = Doctor.create(first_name: "John", last_name: "Doe", specialty: "Cardiologist", zip_code: "12345")
doctor2 = Doctor.create(first_name: "Alice", last_name: "Johnson", specialty: "Dermatologist", zip_code: "67890")

# Créer des patients
patient1 = Patient.create(first_name: "Jane", last_name: "Smith")
patient2 = Patient.create(first_name: "Bob", last_name: "Johnson")

# Créer des rendez-vous appointments
appointment1 = Appointment.create(date: DateTime.now, doctor: doctor1, patient: patient1)
appointment2 = Appointment.create(date: DateTime.now + 1.day, doctor: doctor2, patient: patient2)

puts "création ok !"
