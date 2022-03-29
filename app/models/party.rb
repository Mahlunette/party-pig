class Party < ApplicationRecord
  has_many :buckets

  validates :name, presence: true
end
