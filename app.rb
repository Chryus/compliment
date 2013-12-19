require 'sinatra/base'
require './lib/compliment'

module ComplimentSite
  class App < Sinatra::Application
    enable :sessions
    get '/' do
      if session[:last_color].nil? && session[:last_message].nil?
        @compliment = Compliment.new
        session[:last_color] = @compliment.color
        session[:last_message] = @compliment.message
      else
        @compliment = Compliment.new
        while session[:last_color] == @compliment.color || session[:last_message] == @compliment.message
          @compliment.color = Compliment::COLORS.sample
          @compliment.message = Compliment::COMPLIMENTS.sample
        end
        session[:last_color] = @compliment.color
        session[:last_message] = @compliment.message
      end
      erb :compliment
    end
  end
end


