class Party < ApplicationRecord
  has_many :buckets, dependent: :destroy

  validates :name, presence: true
end
