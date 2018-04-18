# frozen_string_literal: true

$LOAD_PATH << '.'
require 'business_module'
# This class contains sellers information
class Seller
  include ShopData
  def sellers_details
    users_data
    all_sellers_details
  end

  def sellers_full_name
    users_data
    all_sellers_full_name
  end

  def sellers_age
    users_data
    all_sellers_age
  end
end

sellers = Seller.new
sellers.sellers_details
sellers.sellers_full_name
sellers.sellers_age