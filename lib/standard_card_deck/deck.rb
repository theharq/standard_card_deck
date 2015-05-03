require 'standard_card_deck/card'

class Deck
  SUITS = %w(hearts clubs spades diamonds).freeze
  RANKS = %w(ace two three four five six seven eight nine ten jack queen king).freeze

  attr_reader :cards

  def initialize
    @cards = SUITS.product(RANKS).map{|suit, rank| Card.new(suit, rank) }
  end

  def shuffle
    cards.shuffle!
  end

  def deal
    return "There are no more cards on the Deck" unless cards.any?
    cards.shift
  end
end