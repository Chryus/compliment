require 'sinatra/base'
require './lib/compliment'
require 'debugger'
# Why is it a good idea to wrap our App class in a module?
module ComplimentSite
  class App < Sinatra::Application
    enable :sessions
    get '/' do
      if session[:last_compliment].nil?
        @compliment = Compliment.new
        session[:last_compliment] = @compliment.color
    	else
        @compliment = Compliment.new
        while session[:last_compliment] == @compliment.color 
          @compliment.color = Compliment::COLORS.sample
        end
        session[:last_compliment] = @compliment.color 
	    end
      erb :compliment
    end
  end
end


