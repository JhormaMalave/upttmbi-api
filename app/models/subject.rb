class Subject < ApplicationRecord
  belongs_to :course

  enum tipo: ['Taller', 'Curso']
  enum duration: ['Trimestral', 'Semestral', 'Anual']
  validates :name, presence: true, uniqueness: { scope: :course }
  validates :curricular_units, presence: true, length: { in: 1..9 }
  validates :type, presence: true
  validates :duration, presence: true
end
