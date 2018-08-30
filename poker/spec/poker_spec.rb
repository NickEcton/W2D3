require "card.rb"
require 'deck.rb'
describe "#card" do 
  describe "#initialize" do 
    subject {Card.new(5, "Heart") }
    it "Initializes with number" do 
      expect(subject.value).to eq(5)
    end 
    it "Initializes with suit" do 
      expect(subject.suit).to eq("Heart")
    end 
    it "Won't allow a number greater than 10" do
      expect{(Card.new(13,"Heart"))}.to raise_error(ArgumentError)
    end
  end 
end 

describe "#deck" do 
  subject { Deck.new } 
  describe "#Initialize" do 
    it "Creates a deck of 52 cards" do 
      expect(subject.deck.length).to eq(52)
    end 
  end 
  
  describe "#create_deck" do
    let (:suits) { ['Heart', "Diamond", "Club", "Spade"] }
    it "creates one card from 2 to Ace for each suit" do
      suits.each do |cards|
      expect(subject.deck.select { |el| el.suit == cards }.length).to eq(13)
      end
    end
  end
end 

