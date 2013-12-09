require 'ap'

class Compliment

	attr_reader :message, :image

	COMPLIMENTS = ["You're pretty", "You're super-fantastic!"]
	IMAGES = ["https://24.media.tumblr.com/cc65a152ab08459fde8e834b30f795a7/tumblr_mxis6kDogx1qdhrnoo1_250.gif", "https://24.media.tumblr.com/b1229bb51705118a2e0be539db74df71/tumblr_mxao3oRohX1sbf1g1o1_500.gif", "http://www.mycathatesyou.com/wp-content/gallery/gifs/6.gif"]

	def initialize
		@message = COMPLIMENTS.sample
		@image = IMAGES.sample
	end

end
