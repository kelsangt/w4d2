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



        # move_dirs
        arr_of_moves
    end

    # private 

    # def move_dirs 
    #     raise NotImplementedError.new "Not Implemented"
    # end

    def grow_unblocked_moves_in_dir(dx, dy) #assuming dx/dy is our starting pos rn
        real_x = dx 
        real_y = dy
        direction_moves = []
        HORIZONTAL_DIRS.each do |direction|
            8.times do 
                dir_x, dir_y = direction
                new_x = dx + dir_x 
                new_y = dy + dir_y 
            
                if (new_x >= 0 && new_x <= 7) && (new_y >= 0 && new_y <= 7)
                    direction_moves << [new_x, new_y]
                end

                dx = new_x 
                dy = new_y
            end
            dx = real_x 
            dy = real_y
        end
        direction_moves
    end
end