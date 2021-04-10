class Course < ApplicationRecord
  has_many :sections

  validates :name, uniqueness: true
end
