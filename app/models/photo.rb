class Photo < ApplicationRecord
  paginates_per 5
  has_many :comments, dependent: :destroy
end
