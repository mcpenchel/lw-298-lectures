class Band

  attr_reader :name, :albums
  attr_writer :albums

  attr_accessor :members

  def initialize(membre, nom, list_of_cds)
    @members = membre
    @name    = nom
    @albums  = list_of_cds
  end

  def new_release
    albums_that_can_be_released = []

    album_ideas.each do |key, value|
      if value[:should_be_sent_to_the_press] == true
        albums_that_can_be_released << key
      end
    end

    albums_that_can_be_released
  end

  private

  def album_ideas
    {
      "My album" => {
        should_be_sent_to_the_press: true
      },
      "Other album" => {
        should_be_sent_to_the_press: false
      }
    }
  end

end

band_members = ["Robert Plant", "Jon Paul Jones"]
name   = "Led Zeppelin"
albums = ["Led Zeppelin I", "Led Zeppelin II"]

led_zeppelin = Band.new(band_members, name, albums)

puts led_zeppelin.name

led_zeppelin.members.each do |member|
  puts member
end

led_zeppelin.albums.each do |album|
  puts album
end

puts "==============="
puts "I AM CHANGING THE BAND MEMBERS"
puts "==============="

led_zeppelin.members = ["Matt", "Anderson", "Diana"]
led_zeppelin.albums = [
  "LeWagon Grafitti 1", "LeWagon Amarelinho 24"
]

led_zeppelin.members.each do |member|
  puts member
end

led_zeppelin.albums.each do |album|
  puts album
end

puts led_zeppelin.new_release
