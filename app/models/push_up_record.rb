class PushUpRecord < ApplicationRecord
  validates :user,  presence: true
  validates :count, presence: true, numericality: { greater_than_or_equal_to: 0 }
end
