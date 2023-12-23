require "spec_helper"
require_relative "../lib/substring_f"

RSpec.describe "Substring Finder" do
  describe 'test the method with one word' do
    let(:array) { ["below","down","go","going","horn","how","howdy","it","i",
    "low","own","part","partner","sit"] }
    
    context 'produce the substrings found in the array' do
      it 'returns the substring of the word in the dict array' do
        expected_output1 = {"below"=> 1, "low"=> 1}
        word = "below"
        expect(substrings(word,array)).to eq(expected_output1)
      end
    end

    context 'when faced with multiple words' do
      it 'returns the substrings of the array in the dict array' do
        expected_output2= { 
          "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1,
           "it" => 2, "i" => 3,"own" => 1, "part" => 1, "partner" => 1, "sit" => 1}
        words = "Howdy partner, sit down! How's it going?"
        expect(substrings(words,array)).to eq(expected_output2)
      end
    end
  end
end