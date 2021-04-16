class TeacherCategory < ApplicationRecord
  has_many :teachers

  validates :name, presence: true, uniqueness: true
end
