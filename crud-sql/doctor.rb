require 'sqlite3'
DB = SQLite3::Database.new("02_sql_crud_doctors.db")
DB.results_as_hash = true

class Doctor
  attr_reader :id, :name, :age, :specialty

  def initialize(attributes = {})
    @id = attributes[:id]
    @name = attributes[:name]
    @age = attributes[:age]
    @specialty = attributes[:specialty]
  end

end

Doctor.all.each do |doctor|
  puts doctor.name
end
