class Photo < ApplicationRecord
  paginates_per 5
  has_many :comments, dependent: :destroy
  has_one_attached :avatar
end
