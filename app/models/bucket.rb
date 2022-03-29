class Bucket < ApplicationRecord
  belongs_to :party
  has_many :tasks

  validates :name, presence: true
end
