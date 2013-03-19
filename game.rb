class Game
  def initialize(init_gide)
   @gide_leng=init_gide.size  
  end
  def tick
   Array.new(@gide_leng){[0]}
=begin
   if @gide_leng == 2
   [[0],[0]]
   elsif @gide_leng == 3
   [[0],[0],[0]]
   else
   [[0]]
   end
=end
  end
end
