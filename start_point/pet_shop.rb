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
  for pets in shop[:pets]
    if pets[:breed] == breed
      number_of_breed.push(pets)
    end
  end
  return number_of_breed
end

def find_pet_by_name(shop, name)
  for pets in shop[:pets]
    if pets[:name] == name
      return pets
    end
  end
end

# def remove_pet_by_name(shop, name)
#   for pet in shop[:pets]
#     if pet[:name] == name
#       shop[:pets].delete(pet)
#     end
#   end
# end

def add_pet_to_stock(shop, new_pet)
  shop[:pets].push(new_pet)
end

def customer_cash(customer)
  return customer[:cash]
end

def remove_customer_cash(customer, amount)
  customer[:cash] -= amount
end
