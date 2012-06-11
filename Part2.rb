class WrongNumberOfPlayersError < StandardError; end
class NoSuchStrategyError < StandardError; end
def rps_game_winner(game)
raise WrongNumberOfPlayersError unless game.length ==2
game.each do |x| 
unless x[1]=="S"||x[1]=="P" || x[1]=="R" 
then raise NoSuchStrategyError
end
end
case game[0][1]
when "S"
if game[1][1]!="R" then return game[0]
else return game[1]
end
when "R"
if game[1][1]!="P" then return game[0]
else return game[1]
end
when "P"
if game[1][1]!="S" then return game[0]
else return game[1]
end
end
end

def rps_tournament_winner(array)
  if array[0][0].class==String 
  then return rps_game_winner(array)
  else 
  rps_game_winner([rps_tournament_winner(array[0]),rps_tournament_winner(array[1])])
  end
end
