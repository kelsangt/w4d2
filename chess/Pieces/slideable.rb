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
        
        move_dirs.each do |direction|
            x, y = direction
            grow_unblocked_moves_in_dir(x, y)
        end
        arr_of_moves = []


         


        
        arr_of_moves
    end

    # private 

    # def move_dirs 
    #     raise NotImplementedError.new "Not Implemented"
    # end

    def grow_unblocked_moves_in_dir(dx, dy) #assuming dx/dy is our starting pos rn
        real_x = dx  # -1
        real_y = dy  # 0
        direction_moves = []
        8.times do  
            if ((dx >= 0 && dx <= 7) && (dy >= 0 && dy <= 7)) 
                && @rows[dx][dy] == nil

                direction_moves << [dx, dy]
            end

            dx += real_x 
            dy += real_y
        end
        direction_moves
    end
end