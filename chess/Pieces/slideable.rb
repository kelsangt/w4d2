require "byebug"

module Slideable
    HORIZONTAL_DIRS = [
    [-1, 0], #left
    [1, 0], #right
    [0, 1], #up
    [0, -1] #down
].freeze 

    DIAGONAL_DIRS = [
    [-1, 1], #up-left
    [1, 1], #up-right
    [-1, -1], #down-left
    [1, -1] #down-right
].freeze


    def horizontal_dirs 
        HORIZONTAL_DIRS
    end

    def diagonal_dirs 
        DIAGONAL_DIRS
    end

    def moves 
        arr_of_moves = []

        move_dirs.each do |direction|
            x, y = direction
            arr_of_moves += grow_unblocked_moves_in_dir(x, y)
        end
        
        arr_of_moves
    end

    private 

    def move_dirs 
        raise NotImplementedError.new "Not Implemented"
    end

    def grow_unblocked_moves_in_dir(dx, dy) 

        direction_moves = []
        piece_x, piece_y = self.pos

        (1..7).each do |i|
            new_x = piece_x + (i * dx) 
            new_y = piece_y + (i * dy) 

            if ((0..7).include?(new_x) && (0..7).include?(new_y)) 
                #&& @rows[new_x][new_y] == nil

                direction_moves << [new_x, new_y]
            end

        end
        direction_moves
    end
end