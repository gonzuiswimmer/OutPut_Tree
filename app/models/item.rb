class Item < ApplicationRecord

  belongs_to :output
  belongs_to :user
end
