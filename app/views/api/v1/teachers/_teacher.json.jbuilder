json.id teacher.id
json.id_number teacher.id_number
json.name teacher.name
json.surname teacher.surname
json.birth_date teacher.birth_date
json.cellphone_number teacher.cellphone_number
json.email teacher.email
json.observation teacher.observation
json.hire_date teacher.hire_date
json.ordinary_date teacher.ordinary_date
json.status teacher.status
json.teacher_category do
  teacher_category = TeacherCategory.find(teacher.teacher_category_id)
  json.id teacher_category.id
  json.name teacher_category.name
end
