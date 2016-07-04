require 'attributes/alignment'

class Character
	attr_accessor :name, :hp, :armor_class

	def hp
		@hp || 5
	end

	def armor_class
		@armor_class || 10
	end

	def alignment=(alignment)
		@alignment = Alignment.new.find { |x| x == alignment } 
	end
	def alignment
		@alignment
	end
end