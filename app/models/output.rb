class Output < ApplicationRecord
  validates :title, presence: true
  validates :detail, presence: true
  validates :post_date, presence: true
  validates :genre_id, presence: true
end
