require_relative "Card.rb"
require "byebug"

class Board
    attr_accessor :table

    def initialize
        @table = Array.new(4) {Array.new(4,"empty")}
        self.fill_board
    end

    def fill_board
        pairs = ["A","A","B","B","C","C","D","D","E","E","J","J","Q","Q","K","K"]
        pairs.each do |char|
            loop do 
                row = rand(0..3)
                col = rand(0..3)
                if !@table[row][col].is_a?(Card)
                    @table[row][col] = Card.new(char)
                    break
                end
            end 
        end
    end

    def show_board
        system("clear")
        p "  0 1 2 3"
        p "0 #{@table[0][0].show} #{@table[0][1].show} #{@table[0][2].show} #{@table[0][3].show} "
        p "1 #{@table[1][0].show} #{@table[1][1].show} #{@table[1][2].show} #{@table[1][3].show} "
        p "2 #{@table[2][0].show} #{@table[2][1].show} #{@table[2][2].show} #{@table[2][3].show} "
        p "3 #{@table[3][0].show} #{@table[3][1].show} #{@table[3][2].show} #{@table[3][3].show} "
        puts
    end
end