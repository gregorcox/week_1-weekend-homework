def pet_shop_name(shop)
  return shop[:name]
end

def total_cash(shop)
  return shop[:admin][:total_cash]
end

def add_or_remove_cash(shop, amount)
  return shop[:admin][:total_cash] += amount
end

def pets_sold(shop)
  return shop[:admin][:pets_sold]
end

def increase_pets_sold(shop, number_of_pets_sold)
  return shop[:admin][:pets_sold] += number_of_pets_sold
end

def stock_count(shop)
  return shop[:pets].length
end

def pets_by_breed(shop, breed)
  number_of_breed = []
  for pet in shop[:pets]
    if pet[:breed] == breed
      number_of_breed.push(pet)
    end
  end
  return number_of_breed
end

# def find_pet_by_name(shop, name)
#   for pet in shop[:pets]
#     if pet[:name] == name
#       return pet
#     end
#   end
# end

# def find_pet_by_name(shop, name)
#   result = shop[:pets].find { |pet| pet[:name].include?(name) }
#   return result
# end

def find_pet_by_name(shop, name)
  result = nil
  for pet in shop[:pets]
    if pet[:name] == name
      result = pet
      break
    end
  end
  return result
end



def remove_pet_by_name(shop, name)
  for pet in shop[:pets]
    if pet[:name] == name
      shop[:pets].delete(pet)
    end
  end
end

def add_pet_to_stock(shop, new_pet)
  shop[:pets].push(new_pet)
end

def customer_cash(customer)
  return customer[:cash]
end

def remove_customer_cash(customer, amount)
  customer[:cash] -= amount
end

def customer_pet_count(customer)
  return customer[:pets].count
end

def add_pet_to_customer(customer, pet)
  customer[:pets].push(pet)
end

def customer_can_afford_pet(customer, pet)
  customer[:cash] > pet[:price]
end

# def sell_pet_to_customer(shop, pet, customer)
