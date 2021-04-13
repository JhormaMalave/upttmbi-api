class Course < ApplicationRecord
  has_many :sections
  has_many :subjects

  validates :name, uniqueness: true
end
