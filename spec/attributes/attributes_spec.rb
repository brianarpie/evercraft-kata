require 'spec_helper'
require 'attributes/alignment'

describe Alignment do
	it "is an enumerable w/ 'good', 'evil', & 'neutral'" do
		expect(Alignment.new.entries).to match_array ["good", "evil", "neutral"]
	end
end