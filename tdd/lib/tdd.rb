def my_dup(array)
  result = []
  i = 0 
  while i < array.length 
    result << array[i] unless result.include?(array[i])
    i+=1
  end 
  result 
end 

def two_sum(array)
  result = []
  i = 0 
  while i < array.length - 1
    j = i + 1 
    while j < array.length 
      if array[i] + array[j] == 0 
        result << [i, j]
      end 
      j+=1
    end
    i+=1
  end
  result 
end

def my_transpose(array)
  result = [] 
    (0...array.length).each do |i| 
      result << [array[0][i]]
      (1..2).each do |j|
        result[i] << array[j][i]
      end 
    end 
  result 
end 

def stock_picker(array)
  result = []
  max_difference = 0
  i = 0
  while i < array.length - 1
    j = i + 1
    while j < array.length
      if array[j] - array[i] > max_difference
        max_difference = array[j] - array[i]
        result = [i, j]
      end
      j += 1
    end
    i += 1
  end
  result
end


class Towers
  attr_accessor :towers
  
  def initialize
    @towers = [[1,2,3],[],[]]
  end
  
  def move(start_pos, end_pos) 
    if @towers[start_pos].empty?
      raise "Empty Start tower!"
    end 
    if @towers[end_pos][0] < @towers[start_pos][0]
      raise "Invalid Move"
    end 
  end 
  
  def get_first_move 
        puts "Pick a tower"
  end 
  
  
  
  
  
  
  
  
  
  
  
  
end