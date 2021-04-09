class Period < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :initial_date, presence: true
  validates :status, presence: true
end
