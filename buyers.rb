# frozen_string_literal: true

$LOAD_PATH << '.'
require 'business_module'
class Buyer
  include ShopData
  def buyers_details
    users_data
    all_buyers_details
  end

  def buyers_full_name
    users_data
    all_buyers_full_name
  end

  def buyers_age
    users_data
    all_buyers_age
  end
end

buyers = Buyer.new
buyers.buyers_details
buyers.buyers_full_name
buyers.buyers_age