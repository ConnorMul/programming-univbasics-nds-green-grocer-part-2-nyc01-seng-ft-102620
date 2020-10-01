require_relative './part_1_solution.rb'

def apply_coupons(cart, coupons)
  i = 0 
  
  new_cart
  cart.each do |items|
   coupon_item = find_item_by_name_in_collection(items[:item], new_cart)
   if coupon_item
     new_cart_index = 0
      coupons.each do |new_cart_item|
        if new_cart_item[:item] == coupon_item[:item]
          new_cart_item[] = coupon_item[:item]
        end
        new_cart_index += 1
      end
end

def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
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
end
