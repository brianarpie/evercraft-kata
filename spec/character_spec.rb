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
		context "no hit points assigned" do
			it "defaults to 5" do
				expect(wolverine.hp()).to eq(5)
			end
		end
	end
	describe ".armor_class" do
		context "no armor class assigned" do
			it "defaults to 10" do
				expect(wolverine.armor_class()).to eq(10)
			end
		end
	end
	describe ".attack" do
		context "with no enemy arg" do
			it "raises an ArgumentError" do
				expect { wolverine.attack() }.to raise_error ArgumentError
			end
		end
		context "with non-Character enemy arg" do
			it "raises a TypeError" do
				expect { wolverine.attack(enemy="nightcrawler") }.to raise_error TypeError
			end
		end
		context "with Character enemy arg" do
			nightcrawler = Character.new

			it "returns a roll value between 1 and 20" do
				roll = wolverine.attack(enemy=nightcrawler)[:roll]
				expect(roll).to be > 0 
				expect(roll).to be <= 20
			end
			context "enemy armor_class is < die roll" do
				it "renders a succesful attack" do
					expect(wolverine.attack(enemy=nightcrawler, die_roll=20)[:success])
						.to be true
				end
			end
			context "enemy armor_class is >= die roll" do
				it "renders an unsuccesful attack" do
					expect(wolverine.attack(enemy=nightcrawler, die_roll=1)[:success])
						.to be false
				end
			end
		end
	end
end