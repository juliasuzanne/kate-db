class Drawing < ApplicationRecord
  validates :tags, presence: true
  validates :url, presence: true
  has_many :images
end
