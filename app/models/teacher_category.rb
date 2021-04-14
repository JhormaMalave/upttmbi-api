class TeacherCategory < ApplicationRecord
  validates :name, presence: true, uniqueness: true
end
