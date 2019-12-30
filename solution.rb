class Deck
    attr_accessor :cards

    def initialize
        suits = ["Hearts","Clubs","Diamonds","Spades"]
        ranks = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
        @cards = []
        ranks.each do |rank|
            suits.each do |suit|
                @cards << Card.new(rank,suit)
            end
        end 

    end

    def choose_card
        somecard = @cards.sample
        @cards.delete(somecard)
       somecard
    end



end

class Card
    attr_accessor :rank, :suit

    def initialize(suit,rank)
        @rank = rank 
        @suit = suit 
    end 

end
