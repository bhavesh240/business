# frozen_string_literal: true

$LOAD_PATH << '.'
require 'business_module'
# This class contains all users information
class User
  include ShopData
  def users_details
    users_data
    all_users_details
  end

  def users_age
    users_data
    all_users_age
  end

  def find_user(name)
    users_data
    find_user = name
    @users.each do |data|
      puts data if data[:first_name] == find_user.to_s
    end
  end
end

users = User.new
users.users_details
users.users_age
users.find_user('alex')