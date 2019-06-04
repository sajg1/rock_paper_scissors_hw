require('sinatra')
require('sinatra/contrib/all')

require_relative('./models/game')

also_reload('./models')

get '/' do
  erb(:home)
end

get '/play/:hand1/:hand2' do
  round = RockPaperScissors.new(params[:hand1].to_s, params[:hand2].to_s)
  return round.play_game()
end
  # if (params['hand1'].to_s == "rock") && (params['hand2'].to_s == "scissors")
  #   return "Rock beats Scissors!"
  # end
