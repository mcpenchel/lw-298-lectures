

# CREATE

berlin = {}
rio = {
  "country" => "Brazil",
  "population" => 6000000
}

# READ

rio["country"] # => "Brazil"
rio["population"] # => 6000000

# ADD

rio["football_teams"]  # => nil
rio["best_team"] = "Botafogo"
rio["coolest_animal"] = "Capivara"

# UPDATE

rio["best_team"] = "Flamengo"
