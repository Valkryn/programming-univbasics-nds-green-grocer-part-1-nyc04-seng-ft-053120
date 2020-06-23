def find_item_by_name_in_collection(name, collection)
  collection.each do | item |
    if item[:item] == name
      return item
    end
  end
  nil
end

def consolidate_cart(cart)
new_cart = {}
  cart.each do | x |
    x.each do | y , z |
      new_cart[y] ||= z
      if new_cart[y][:count]
        new_cart[y][:count] += 1
      else
        new_cart[y][:count] = 1
      end
    end
  end
  new_cart
end


  