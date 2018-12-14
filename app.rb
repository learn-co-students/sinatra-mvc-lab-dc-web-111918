require_relative 'config/environment'

class App < Sinatra::Base
  get "/" do
    erb :user_input
  end

  post "/piglatinize" do
    string = params["user_phrase"]
    # binding.pry
    pig_instance = PigLatinizer.new
    # binding.pry
    @piglat = pig_instance.piglatinize(string)
    erb :piglatinize
  end
end
