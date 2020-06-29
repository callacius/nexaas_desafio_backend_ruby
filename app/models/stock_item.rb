class StockItem < ApplicationRecord
  validates_presence_of :store, :product, :quantity
  belongs_to :store
  belongs_to :product
end
