require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base

    get "/" do 
        erb :user_input
    end 

    post "/piglatinize" do
        new_pig = PigLatinizer.new
        phrase = params[:user_phrase]
        @latinized_text = new_pig.piglatinize(phrase)
        erb :piglatinize
    end 

end