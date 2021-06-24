class Bookmark < ApplicationRecord
  belongs_to :list
  belongs_to :movie

  validates :comment, lenght: { minimum: 6 }
end
