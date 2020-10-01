require_relative './part_1_solution.rb'

def apply_coupons(cart, coupons)
  i = 0
  
  coupon_cart = []
  while i < cart.length do 
    if cart[i] == coupons[i]
      coupons[i][:item] = "#{item}W/COUPON"
      coupon_cart << coupons[i]
    else 
      coupon_cart << cart[i]
    end
    i += 1 
  end 
  coupon_cart
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
