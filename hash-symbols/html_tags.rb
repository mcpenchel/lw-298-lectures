

def tag(tag_name, content, attributes = {})
  treated_attributes = attributes.map { |key, value| " #{key}='#{value}'" }.join(" ")
  return "<#{tag_name}#{treated_attributes}>#{content}</#{tag_name}>"
end


puts tag("h1", "Hello world")
# => <h1>Hello world</h1>

puts tag("h1", "Hello world", { class: "bold" })
# => <h1 class='bold'>Hello world</h1>

puts tag("a", "Le Wagon", { href: "http://lewagon.org", class: "btn" })
# => <a href='http://lewagon.org' class='btn'>Le Wagon</a>
