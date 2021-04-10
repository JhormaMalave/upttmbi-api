class Period < ApplicationRecord
  has_many :sections

  validates :name, presence: true, uniqueness: true
  validates :initial_date, presence: true
  validates :status, presence: true
end
