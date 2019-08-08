require "pry-byebug"

array = {
  "Lamborgini" => {
    "color" => "red",
    "price" => 10000000000
  }
}

binding.pry


array.each do |element|
  # Doing something really complex about it
  puts element
end
