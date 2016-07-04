class Alignment
	include Enumerable

	def each
		yield "good"
		yield "evil"
		yield "neutral"
	end
end