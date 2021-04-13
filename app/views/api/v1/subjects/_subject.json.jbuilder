json.id subject.id
json.name subject.name
json.curricular_units subject.curricular_units
json.duration subject.duration
json.subject_type subject.subject_type
json.status subject.status
json.course do
  course = Course.find(subject.course_id)
  json.id course.id
  json.name course.name
end