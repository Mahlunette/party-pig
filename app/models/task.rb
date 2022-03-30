class Task < ApplicationRecord
  belongs_to :bucket
  validates :name, presence: true
  validates :index, presence: true,
                    uniqueness: { scope: :bucket, message: "the tasks should have unique indice" }
end
