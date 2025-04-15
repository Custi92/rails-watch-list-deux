class Film < ApplicationRecord
  has_many :bookmarks


  validates :titre, :apercu, presence: true
  validates :titre, uniqueness: true

  def to_s
    titre
  end
end
