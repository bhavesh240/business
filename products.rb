# frozen_string_literal: true

$LOAD_PATH << '.'
require 'business_module'
# This class contains products information
class Product
  include ShopData
  def products_details
    products_data
    all_products_details
  end
end

products = Product.new
products.products_details
