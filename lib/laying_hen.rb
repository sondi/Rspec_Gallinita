class LayingHen

attr_reader :egg

	def initialize
		@hen_age = 0
		@egg = []
		@eggs_laid = @egg.length
	end


	def age!
		@hen_age += 1
		if @hen_age > 3
			4.times {@egg << Egg.new}
			@eggs_laid += 1
		end
		@hen_age
  	end

  	def any_eggs?
  		if @eggs_laid > 0
  			true
  		else
  			false
  		end
  	end
end



class Egg

# 	def initialize
# 	end

end