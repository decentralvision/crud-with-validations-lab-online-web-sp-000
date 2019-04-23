class Song < ApplicationRecord
  validates :title, presence: true
  validate :duplicate?
end

def duplicate
end
