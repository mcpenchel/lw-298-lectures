

def my_method(beverage)
  hash = {
    "Coca" => 10,
    "Sprite" => 15
  }

  return hash[beverage].to_s
end

puts my_method("Coca")
