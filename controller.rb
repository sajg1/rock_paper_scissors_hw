require('sinatra')
require('sinatra/contrib/all')

require_relative('./models/game')

also_reload('./models')

get '/' do
  erb(:home)
end

get '/:hand1/:hand2' do
  result = RockPaperScissors.new(params[:hand1].to_s, params[:hand2].to_s)
  @result = result.play_game()
  erb(:result)
end
  # if (params['hand1'].to_s == "rock") && (params['hand2'].to_s == "scissors")
  #   return "Rock beats Scissors!"
  # end
