class Product < ApplicationRecord

  validates :name, presence: true
  validates :name, uniqueness: true
  validates :name, length: {maximum: 254}
  
  validates :price, presence: true
  validates :price, numericality: {greater_than: 0}

  validates :description, presence: true

  def tax
    price * 0.09
  end

  def total
    price + tax
  end
end
