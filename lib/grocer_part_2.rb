require_relative './part_1_solution.rb'

def apply_coupons(cart, coupons)
  i = 0 
  
  coupons.each do |coupon|
    item_with_coupon = find_item_by_name_in_collection(coupon[:item], cart)
    item_is_in_cart = !!item_with_coupon
    enough_items_for_coupon = item_is_in_cart && item_with_coupon[:count] >= coupon[:num]
    if item_is_in_cart and enough_items_for_coupon
      cart << { item: "#{item_with_coupon[:item]} W/COUPON", 
                price: coupon[:cost] / coupon[:num], 
                clearance: item_with_coupon[:clearance],
                count: coupon[:num]
              }
      item_with_coupon[:count] -= coupon[:num]
    end 
    i += 1 
  end 
  cart
end

def apply_clearance(cart)
  cart.map do |item|
    if item[:clearance]
      item[:price] *= 0.8
    end 
    item
  end 
end

def checkout(cart, coupons)
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
  
  consolidate_cart(cart)
  apply_coupons(cart, coupons)
  apply_clearance(cart)
  total = nil
  cart.each do |item|
   if total == nil
    total = (item[:price] * item[:count])
   else 
     total + (item[:price] * item[:count])
  end 
  if total > 100 
    total *= 0.9
  end 
  total
end
