class Song < ApplicationRecord
  validates :title, presence: true
  validates :title, uniqueness:
end
