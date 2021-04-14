# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

roles = ['Departamento', 'Docente']

courses = [0,1,2,3,4]

teacher_categories = [
  'No definido',
  'Instructor',
  'Asistente',
  'Agregado',
  'Asociado',
  'Titular'
]

courses.each do |course|
  Course.find_or_create_by({name: course})
end

roles.each do |role|
  Role.find_or_create_by({name: role})
end

teacher_categories.each do |teacher_category|
  TeacherCategory.find_or_create_by({name: teacher_category})
end
  