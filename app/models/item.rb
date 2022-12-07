class Item < ApplicationRecord

  validates :item_name, presence: true
  validates :item_detail, presence: true
  validates :price, presence: true

  belongs_to :output
  belongs_to :user
  has_one :order
end
