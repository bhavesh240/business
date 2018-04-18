# frozen_string_literal: true

require 'date'
require 'yaml'
# This module contains users and product data
module ShopData
  def users_data
    @users = YAML.load_file 'users.yaml'
    @buyers_data = []
    @users.each { |data| @buyers_data.push(data) if data.value?('buyer') }

    @sellers_data = []
    @users.each { |data| @sellers_data.push(data) if data.value?('seller') }
  end

  def products_data
    @products_data = YAML.load_file 'products.yaml'
  end
  
  def all_sellers_full_name
    @sellers_data.each { |data| puts data[:first_name] + ' ' + data[:last_name] }
  end

  def all_buyers_full_name
    @buyers_data.each { |data| puts data[:first_name] + ' ' + data[:last_name] }
  end

  def all_buyers_age
    @buyers_data.each do |data|
      birth_year = Date.parse(data[:date_of_birth]).year
      current_year = Time.now.year
      age = current_year - birth_year
      puts data[:first_name] + ' ' + data[:last_name] + " age : #{age} years"
    end
  end
  
  def all_buyers_details
    @buyers_data.each do |data|
      data.each do |key, values|
        puts "#{key} : #{values}"
      end
    end
  end

  def all_sellers_details
    @sellers_data.each do |data|
      data.each do |key, values|
        puts "#{key} : #{values}"
      end
    end  
  end

  def all_sellers_age
    @sellers_data.each do |data|
      birth_year = Date.parse(data[:date_of_birth]).year
      current_year = Time.now.year
      age = current_year - birth_year
      puts data[:first_name] + ' ' + data[:last_name] + " age : #{age} years"
    end
  end

  def all_products_details
    @products_data.each do |data|
      data.each do |keys, values|
        puts "#{keys} : #{values}"
      end
      print "\n"
    end
  end

  def all_users_details
    @users.each do |data|
      data.each do |keys, values|
        puts "#{keys} : #{values}"
      end
    end
  end

  def all_users_age
    @users.each do |data|
      birth_year = Date.parse(data[:date_of_birth])
      birth_year = birth_year.year
      current_year = Time.now
      current_year = current_year.year
      age = current_year - birth_year
      puts data[:first_name] + ' ' + data[:last_name] + " age : #{age} years"
    end
  end
end
