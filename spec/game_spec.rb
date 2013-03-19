require 'spec_helper'
  def assert_grid(new_word,expect)
      game= Game.new(new_word)
      game.tick.should == expect
  end
describe Game do
  context "one cell" do 
      it "1 cell" do
     assert_grid [[0]],
                 [[0]]  
     assert_grid [[1]],
                 [[0]]   
      end

      it "2 cell" do
      assert_grid [[0],[0]],
                  [[0],[0]]
      assert_grid [[0],[1]],
                  [[0],[0]]
      assert_grid [[1],[1]],
                  [[0],[0]] 
      end
      it "3 cell" do
      assert_grid [[0],[0],[0]],
                  [[0],[0],[0]]
      assert_grid [[1],[0],[0]],
                  [[0],[0],[0]]
      
      assert_grid [[1],[1],[0]],
                  [[0],[0],[0]]
      assert_grid [[1],[1],[1]],
                  [[0],[1],[0]]
      
      end

  end
end
