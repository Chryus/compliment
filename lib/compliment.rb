require 'ap'


class Compliment

	attr_accessor :message, :image, :color

	COMPLIMENTS = ["You're pretty", "You're super-fantastic!"]
	IMAGES = ["https://24.media.tumblr.com/cc65a152ab08459fde8e834b30f795a7/tumblr_mxis6kDogx1qdhrnoo1_250.gif", "https://24.media.tumblr.com/b1229bb51705118a2e0be539db74df71/tumblr_mxao3oRohX1sbf1g1o1_500.gif", "http://www.mycathatesyou.com/wp-content/gallery/gifs/6.gif"]
	COLORS = ["#8C727B", "#8CBEB2", "#F2EBBF", "#F3B562", "#F76363"]
	HISTORY = []

	def initialize
		@message = COMPLIMENTS.sample
		@image = IMAGES.sample
		@color = COLORS.sample
		HISTORY << self
	end

	def self.all
		HISTORY
	end
	
	def self.check_duplicates
		while Compliment.all[-2].color == Compliment.all[-1].color #|| Compliment.all[-2].message == Compliment.all[-1].message
			Compliment.all[-1].color = COLORS.sample
			#Compliment.all[-1].message = COMPLIMENTS.sample
		end
		return Compliment.all[-1].color
	end

end

# comp = Compliment.new
# p Compliment.all.size
# p Compliment.check_duplicates

