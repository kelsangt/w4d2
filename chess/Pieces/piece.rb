require_relative "slideable.rb"

class Piece
    include Slideable

    attr_reader :val, :pos
    def initialize(val='P')
        @val = val
        # @color = :white
        # @board = Board.new
        @pos = []
    end

    def to_s
    end
    
    def empty?
    end

    def valid_moves
    end

    def pos=(val)
        x,y = val
        @pos = [x,y]
    end

    def symbol
    end
    
    private 

    def move_into_check?(end_pos)
    end

end