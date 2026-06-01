class Address < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions

  # アソシエーション
  belongs_to :prefecture
  belongs_to :order

  # バリデーション
  validates :postal_code, presence: true, format: { with: /\A\d{3}-\d{4}\z/, message: 'Enter it as follows (e.g. 123-4567)' }
  validates :prefecture_id, numericality: { other_than: 1, message: "can't be blank" }
  validates :city, presence: true
  validates :house_number, presence: true
  validates :phone_number, presence: true, format: { with: /\A\d{10,11}\z/ }
end
