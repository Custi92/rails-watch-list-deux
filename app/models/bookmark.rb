class Bookmark < ApplicationRecord
  belongs_to :film,  dependent: :destroy
  belongs_to :list

  validates_uniqueness_of :movie_id, :scope => :list_id
  validates :commentaire, length: { minimum: 6 }
end
