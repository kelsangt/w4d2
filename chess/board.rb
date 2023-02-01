require_relative "./Pieces/piece.rb"
require_relative "./Pieces/queen.rb"

class Board

    def initialize
        @rows = Array.new(8) {Array.new {[]}}
        add_piece
    end

    def [](pos)
        @rows[pos]
    end

    def []=(pos, val)
        @rows[pos] = val
    end

    def move_piece(start_pos, end_pos)

        start_x, start_y = start_pos
        end_x, end_y = end_pos

        if @rows[start_x][start_y] == nil #|| !valid_moves.include?(end_pos)
            raise "invalid position"
        end

        @rows[end_x][end_y] = @rows[start_x][start_y]
        @rows[start_x][start_y] = nil
    end

    def add_piece
        @rows.each_with_index do |row, i|
            if i == 0 || i == 1
                8.times do 
                    row << Piece.new('B').val
                end
            elsif i == 6 || i == 7
                8.times do 
                    row << Piece.new('W').val
                end
            else 
                8.times do 
                    row << nil
                end
            end
        end
        @rows[0][3] = Queen.new.val
        @rows[7][3] = Queen.new.val
    end

end