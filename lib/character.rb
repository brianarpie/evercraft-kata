require 'attributes/alignment'

class Character
	attr_accessor :name

	def alignment=(alignment)
		@alignment = Alignment.new.find { |x| x == alignment } 
	end
	def alignment
		@alignment
	end
end