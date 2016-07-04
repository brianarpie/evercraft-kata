require 'attributes/alignment'

class Character
	attr_accessor :name, :hp

	def hp
		@hp || 5
	end

	def alignment=(alignment)
		@alignment = Alignment.new.find { |x| x == alignment } 
	end
	def alignment
		@alignment
	end
end