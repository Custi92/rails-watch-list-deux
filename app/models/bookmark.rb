class Bookmark < ApplicationRecord
  belongs_to :film,  dependent: :destroy
  belongs_to :list

  validates_uniqueness_of :film_id, :scope => :list_id
  validates :commentaire, length: { minimum: 6 }
end
