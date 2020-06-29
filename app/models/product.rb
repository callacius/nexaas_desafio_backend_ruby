class Product < ApplicationRecord
    validates_presence_of :name, :price_cost
    # has_many :stock_items, dependent: :restrict_with_error
end
