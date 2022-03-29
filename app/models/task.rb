class Task < ApplicationRecord
  belongs_to :bucket

  validates :name, presence: true
end
