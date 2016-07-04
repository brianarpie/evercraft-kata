require 'spec_helper'
require 'character'
require 'attributes/alignment'

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
	describe ".alignment" do
		context "given an alignment argument is set" do
			wolverine.alignment = "good"
			it "returns the character's alignment" do
				expect(wolverine.alignment()).to eq("good")
			end
		end
	end
	describe ".hp" do
		context "no hit points assigned"
			it "defaults to 5" do
				expect(wolverine.hp).to eq(5)
			end
		end
end