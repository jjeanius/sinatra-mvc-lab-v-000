require_relative 'config/environment'

class App < Sinatra::Base

  get "/" do
    erb :user_input
  end

  post '/piglatinize' do
    "200 status code"

    erb :piglatinize
  end

  post '/piglatinize' do
    @@text = PigLatinizer.new(params[:user_phrase])

    erb :results
  end

end
