require 'rspec'
require 'tdd.rb'



  describe "#my_dup" do
      let(:array) { [1, 2, 2, 3] }
    it "removes duplicates from an array" do
      expect(my_dup(array)).to eq([1, 2, 3])
    end  
  end
  
  describe "#two_sum" do 
    let(:array) { [1, 2, 4, -1] }
    it "Finds all pairs of positions that sum to zero" do 
      expect(two_sum(array)).to match([[0, 3]])
    end 
    
  end 
  
  describe "#my_transpose" do 
      let(:array) { [[0, 1, 2], [3, 4, 5], [6, 7, 8]] } 
      it "Converts between the row-oriented and column-oriented representations" do
        expect(my_transpose(array)).to eq([[0, 3, 6], [1, 4, 7], [2, 5, 8]])
      end
  end 
  
  describe "#stock_picker" do 
    let(:array) { [0, 2, 5, -1, 7, 18] }
    it "finds the greatest difference and returns an array of indices" do
      expect(stock_picker(array)).to eq([3, 5])
    end
  end
  
  
  describe "#towers of hanoi" do 
    subject (:game) { Towers.new }
    describe "#initialize" do
      it "initializes three arrays" do
        expect(game.towers.length).to be(3)
      end
    end
    
    describe "#move" do 
      context "Is the starting tower empty?" do 
        let(:start_pick) { 1 }
        let(:end_pick) { 2 }
        it "Tests if starting position is empty" do 
          expect { game.move(start_pick, end_pick)}.to raise_error("Empty Start tower!")
        end 
      end 
      context "Is the target tower valid?" do 
        let (:temp_game) {Towers.new}
        it "test if the target tower is a legal move" do 
          temp_game.towers = [[2,3],[1],[]]
          expect { game.move(0, 1)}.to raise_error("Invalid Move")
        end 
      end 
        
      
      
      
      
      
      
      
      
      
      
    end
  end