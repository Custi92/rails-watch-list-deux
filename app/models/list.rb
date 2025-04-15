class List < ApplicationRecord
  has_many :bookmarks,  dependent: :destroy
  has_many :films, through: :bookmarks, dependent: :destroy

  validates :nom, presence: true, uniqueness: true
end
