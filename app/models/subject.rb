class Subject < ApplicationRecord
  belongs_to :course

  enum subject_type: ['Taller', 'Curso']
  enum duration: ['Trimestral', 'Semestral', 'Anual']
  validates :name, presence: true, uniqueness: { scope: :course }
  validates :curricular_units, presence: true, inclusion: { in: (1..9) }
  validates :subject_type, presence: true
  validates :duration, presence: true
end
