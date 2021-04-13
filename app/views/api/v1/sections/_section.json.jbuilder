json.id section.id
json.name section.name
json.trimester section.trimester
json.shift section.shift
json.course do
  course = Course.find(section.course_id)
  json.id course.id
  json.name course.name
end
json.period do
  period = Period.find(section.period_id)
  json.id period.id
  json.initial_date period.initial_date
  json.final_date period.final_date
  json.status period.status
end