class TeacherDegree < ApplicationRecord
  belongs_to :teacher

  enum degree_type: ['Pregrado', 'Postgrado']
  validates :name, presence: true, uniqueness: { scope: [:degree_type, :teacher] }
  validates :degree_type, presence: true
  validates :status, inclusion: { in: [ true, false ] }
end
