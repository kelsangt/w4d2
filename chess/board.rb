require_relative "piece.rb"

class Board

    def initialize
        @rows = Array.new(8) {Array.new {[]}}
        # add_piece
    end

    def [](pos)
        @rows[pos]
    end

    def []=(pos, val)
        @rows[pos] = val
    end

    def move_piece(start_pos, end_pos)

        if @rows[start_pos] == :NullPiece

        end

        @rows[end_pos] = @rows[start_pos]
        @rows[start_pos] = 
    end

    def add_piece
        @rows.each_with_index do |row, i|
            if i == 0 || i == 1 || i == 6 || i == 7
                8.times do 
                    row << Piece.new
                end
            else 
                8.times do 
                    row << nil
                end
            end
        end
    end

end