require_relative 'piece'
require_relative 'slideable'

class Queen < Piece
    include Slideable

    def initialize
        super('Q')
    end

    def move_dirs
        horizontal_dirs + diagonal_dirs
        moves
    end


end