class Period < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :initial_date, presence: true
  validates :state, presence: true
end
