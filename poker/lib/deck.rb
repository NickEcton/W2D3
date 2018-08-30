require 'byebug'
require_relative 'card'
class Deck 
  attr_accessor :deck
  SUITS = ['Heart', "Diamond", "Club", "Spade"]
  FACE_CARDS = ["Jack", 'Queen', 'King', "Ace"]
  
  def initialize
    @deck = create_deck
  end 
  
  def create_deck 
    result = []
    SUITS.each do |suit|
      (2..10).each do |num_value|
        result << (Card.new(num_value, suit))
      end 
      FACE_CARDS.each do |face_value|
        result << (Card.new(face_value, suit))
      end 
    end
    result
  end 
  

end 