class Bucket < ApplicationRecord
  belongs_to :party
  has_many :tasks
end
