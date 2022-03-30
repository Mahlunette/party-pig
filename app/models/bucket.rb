class Bucket < ApplicationRecord
  belongs_to :party
  has_many :tasks, dependent: :destroy

  validates :name, presence: true
end
