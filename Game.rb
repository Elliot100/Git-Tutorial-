require_relative "Board.rb"

class Game
    def initialize
        @first_guess = ""
        @second_guess = ""
    end

    def get_guess(board)
        @first_guess = get_validated_guess
        board.show_board
        row1, col1 = @first_guess
        card1 = board.table[row1][col1]
        card1.reveal
        board.show_board

        @second_guess = get_validated_guess
        board.show_board
        row2, col2 = @second_guess
        card2 = board.table[row2][col2]
        card2.reveal
        board.show_board

        if card1 == card2 #same card
            p "It's a match!"
        else #non matching cards
            p "Try again"
            card1.hide
            card2.hide
        end
        sleep(2) #pause screen for 2 seconds
        board.show_board
    end

    def get_validated_guess
        loop do
            p "Please enter the position of the card you like to flip. (e.g '2,3')"
            pos = gets.chomp.split(",")
            pos.map! {|ele| ele.to_i }
            row,col = pos
            if row > -1 && row < 4 && col > -1 && col < 4 #within range
                return [row,col]
            else
                p "sorry that's an invalid position"
            end
        end  
    end

    def won?(board)
        (0..3).each do |row|
            (0..3).each do |col|
                card = board.table[row][col]
                return false if card.face_up == false
            end
        end
        true
    end

    def play
        board = Board.new
        board.show_board
        while !won?(board)
            get_guess(board)
        end
        p "YAY YOU WON!"
    end
end