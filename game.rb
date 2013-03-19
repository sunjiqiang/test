class Game
  def initialize(grid)
   @init_grid=grid
   @grid_leng=grid.size

   init_grid 
  end
  def tick
    if  @grid_leng > 2 && has_2_alive_neighbors && alive?  
     set_alive
    else
     @next_tick_grid
    end
  end
  private
  def init_grid
    @next_tick_grid= @grid_leng.times.map{[0]}
  end
  def alive?
     @init_grid[1][0] == 1
  end
  def has_2_alive_neighbors
     up_cell_alive?&& down_cell_alive?
  end
  def set_alive
     @next_tick_grid[1][0]=1
     @next_tick_grid
  end
  def up_cell_alive?
     @init_grid[0][0] == 1
  end
  def down_cell_alive?
     @init_grid[2][0] == 1
  end
end
