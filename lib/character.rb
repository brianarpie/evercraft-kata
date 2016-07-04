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

	def attack enemy, die_roll = nil
		if !enemy.instance_of? Character
			raise TypeError
		end
		die_roll ||= Random.new.rand(1..20)
		if enemy.armor_class < die_roll
			success = true
		else
			success = false
		end
		{ roll: die_roll, success: success }
	end
end