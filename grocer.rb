require 'pry'

def consolidate_cart(cart)
  # code here
  
  new_hash = {}
  array = []
  
  # creates a new hash with unique item names as keys to empty hash
  # populates an array with all items to eventually count similar items
  
  cart.each do |item_data|
    item_data.each do |item, info|
      array.push(item)
      new_hash[item] = {}
    end
  end
  
  # updates item key with values one at a time
  # updates item key with count

  cart.each do |item_data|
    item_data.each do |item, info|
      info.each do |key, values|
        new_hash[item][key] = values
      end
      new_hash[item][:count] = array.count(item)
    end
  end
  new_hash
end

def apply_coupons(cart, coupons)
  # code here
  new_hash = {}
  
  cart.each do |item, info|
    if coupons[:item] == item
      if item[:count] >= coupons[:num]
        count = item[:count] / coupons[:num]
        remainder = item[:count] / coupons[:num]
        new_hash[item] = info
        new_hash[item][:count] = remainder
        new_hash["#{item} W/COUPON"] = {:price => coupons[:cost]}, :clearance => true, :count => count
      end
      
  
  #cart.each do |item, info|
   # new_hash[item] = {}
  #end
  
  
    
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
