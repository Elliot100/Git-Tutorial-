class Card
    attr_accessor :card_val, :face_up

    def initialize( char )
        @card_val = char
        @face_up = false
    end

    def hide
        @face_up = false
    end
    
    def reveal
        @face_up = true
    end

    def show 
        if @face_up
            @card_val
        else
            "_"
        end
    end

    def ==( other_card )
        return true if @card_val == other_card.card_val
        false
    end

end