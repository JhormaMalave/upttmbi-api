json.name teacher_degree.name
json.degree_type teacher_degree.degree_type
json.status teacher_degree.status
json.teacher do
  teacher = Teacher.find(teacher_degree.teacher_id)
  json.id teacher.id
  json.name teacher.name
end
