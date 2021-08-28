class Product < ApplicationRecord
  # all not empty
  validates :title, :description, :image_url, presence: true

  # title be unique
  validates :title, uniqueness: true

  # image meets format
  validates :image_url, allow_blank: true, format: {
    with: %r{\.(gif|jpg|png)\Z}i,
    message: 'must be a URL for GIF, JPG, or PNG image.'
  }

  # price >= 0.01
  validates :price, numericality: { greater_than_or_equal_to: 0.01}


end
