require "sinatra"
require "sinatra/reloader"

get("/") do
  "<h1> Dice Roll </h1>"
  "<a href="https://supreme-space-garbanzo-979j4rwr5pwjc7xj5-4567.app.github.dev/dice/2/6">Roll two 6-sided dice</a>"
end

get("/zebra") do
  "We must add a route for each path we want to support"
end

get("/giraffe") do
  "Hopefully this shows up without having to restart the server 🤞🏾"
end

get("/dice/2/6") do
  first_die = rand(1..6)
  second_die = rand(1..6)
  sum = first_die + second_die
	
  outcome = "You rolled a #{first_die} and a #{second_die} for a total of #{sum}."
	
  "<h1>2d6</h1>
   <p>#{outcome}</p>"
end
