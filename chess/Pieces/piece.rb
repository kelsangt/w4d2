class Piece
    attr_reader :val
    def initialize(val='P')
        @val = val
        # @color = :white
        # @board = Board.new
        # @pos = []
    end

    def to_s
    end
    
    def empty?
    end

    def valid_moves
    end

    def pos=(val)
    end

    def symbol
    end
    
    private 

    def move_into_check?(end_pos)
    end

end