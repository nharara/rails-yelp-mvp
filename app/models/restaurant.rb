class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, presence: true
  validates :address, presence: true
  CATEGORIES = ['chinese', 'italian', 'japanese', 'french', 'belgian']
  validates :category, inclusion: { in: CATEGORIES }

  def self.categories
    return CATEGORIES
  end
end
