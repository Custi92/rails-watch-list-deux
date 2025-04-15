class List < ApplicationRecord
  has_many :bookmarks,  dependent: :destroy
  has_many :films through: :bookmarks

  validates :nom, uniqueness: true
end
