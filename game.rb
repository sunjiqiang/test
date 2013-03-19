class Game
  def initialize(init_grid)
   @grid_leng=init_grid.size  
  end
  def tick
   Array.new(@grid_leng){[0]}
  end
end
