class Section < ApplicationRecord
  belongs_to :course
  belongs_to :period

  enum shift: ['Mañana', 'Tarde', 'Fin de semana']
  validates :name, presence: true, uniqueness: { scope: [:course, :period, :trimester] }
  validates :trimester, presence: true, length: { in: 1..3 }
  validates :shift, presence: true

end
