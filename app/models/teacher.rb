class Teacher < ApplicationRecord
  belongs_to :teacher_category
  has_many :teachers, dependent: :destroy

  enum id_type: ['v', 'p']
  validates :id_number, presence: true, uniqueness: { scope: :id_type }
  validates :id_type, presence: true
  validates :name, presence: true
  validates :surname, presence: true
  validates :birth_date, inclusion: { in: (Date.new(1900,1,1)..Date.today-10.year) } unless :birth_date
  validates :status, presence: true
end
