class Restaurant < ActiveRecord::Base
  has_many :reviews, dependent: :destroy
  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true
  validates :category, inclusion: { in: %W(chinese italian japanese french belgian) }

  geocoded_by :address
  after_validation :geocode
end
