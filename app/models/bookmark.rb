class Bookmark < ApplicationRecord
  belongs_to :list
  belongs_to :movie

  validates :comment, lenght: { minimum: 6 }
  validates :movie_id, uniqueness: { scope: :list_id, message: 'Bookmark is not unique'}
end
