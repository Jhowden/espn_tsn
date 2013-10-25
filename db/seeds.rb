 client = ESPN::Client.new(api_key: '8v9gq8r6ccrw43yjduz9nvka')
  @nhl = client.teams(:nhl)

  @nhl.each do |team|
    Team.create(name: team.location + " " + team.name)
  end

# teams = ["Anaheim Ducks",
#       "Boston Bruins",
#       "Buffalo Sabres",
#       "Calgary Flames",
#       "Carolina Hurricanes",
#       "Chicago Blackhawks",
#       "Colorado Avalanche",
#       "Columbus Blue Jackets",
#       "Dallas Stars",
#       "Detroit Red Wings",
#       "Edmonton Oilers",
#       "Florida Panthers",
#       "Los Angeles Kings",
#       "Minnesota Wild",
#       "Montreal Canadiens",
#       "Nashville Predators",
#       "New Jersey Devils",
#       "New York Islanders",
#       "New York Rangers",
#       "Ottawa Senators",
#       "Philadelphia Flyers",
#       "Phoenix Coyotes",
#       "Pittsburgh Penguins",
#       "San Jose Sharks",
#       "St. Louis Blues",
#       "Tampa Bay Lightning",
#       "Toronto Maple Leafs",
#       "Vancouver Canucks",
#       "Washington Capitals",
#       "Winnipeg Jets",
# ]

# teams.each do |team|
#   Team.create(name: team)
# end
