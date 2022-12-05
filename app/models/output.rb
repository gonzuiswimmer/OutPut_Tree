class Output < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions

  validates :title, presence: true
  validates :detail, presence: true
  validates :post_date, presence: true
  validates :genre_id, numericality: { other_than: 0, message: "can't be blank"}

  has_one :item, dependent: :destroy
  belongs_to :genre
  belongs_to :user
end
