class Image < ApplicationRecord
  validates :url, presence: true
  belongs_to :drawing, optional: true
end
