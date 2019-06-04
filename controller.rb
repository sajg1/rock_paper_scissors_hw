require('sinatra')
require('sinatra/contrib/all')

require_relative('./models/game')

also_reload('./models')

get '/play/:hand1/:hand2' do
  game = RockPaperScissors.new(params[:hand1].to_s, params[:hand2].to_s)
  return game.rock_wins()
end
  # if (params['hand1'].to_s == "rock") && (params['hand2'].to_s == "scissors")
  #   return "Rock beats Scissors!"
  # end
