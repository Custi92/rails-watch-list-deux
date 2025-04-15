class Bookmark < ApplicationRecord
  belongs_to :film,  dependent: :destroy
  belongs_to :list

  validates uniqueness: [:film, :list]
  validates commentaire: length: { minimum: 6 }
end
