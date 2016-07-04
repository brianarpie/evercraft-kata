require 'spec_helper'
require 'character'

describe Character do
	wolverine = Character.new
	describe ".name" do
		context "given a name argument is set" do
			wolverine.name = "Logan"
			it "returns the character's name" do
				expect(wolverine.name()).to eql("Logan")
			end
		end
	end	
end