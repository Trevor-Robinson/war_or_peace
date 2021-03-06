require "./lib/card"
require 'pry'

class Deck
  attr_reader :cards
  def initialize(cards)
    @cards = cards
  end

  def rank_of_card_at(index)
    if cards[index] == nil

    else
      return cards[index].rank
    end
  end

  def high_ranking_cards
    high_cards = []
    cards.each do |card|
      if card.rank > 10
        high_cards << card
      end
    end
    high_cards
  end

  def percent_high_ranking
  decimal = high_ranking_cards.count.to_f / @cards.count.to_f * 100
  decimal.round(2)
  end

  def remove_card(num)
    cards.shift(num)
  end

  def add_card(card)
    cards << card
  end

end
