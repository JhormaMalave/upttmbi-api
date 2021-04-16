class Teacher < ApplicationRecord
  belongs_to :teacher_category

  enum id_type: ['v', 'p']
  validates :id_number, presence: true, uniqueness: { scope: :id_type }
  validates :id_type, presence: true
  validates :name, presence: true
  validates :surname, presence: true
  validates :birth_date, inclusion: { in: (Date.new(1900,1,1)..Date.today-10.year) }
  validates :hire_date, inclusion: { in: (Date.new(1950,1,1)..Date.today.year) }
  validates :ordinary_date, inclusion: { in: (Date.new(1950,1,1)..Date.today.year) }
end
