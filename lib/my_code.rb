  def map(source_array)
    p source_array
     new_arr =[]
     if block_given?
    i = 0
    p "before yield is ran"
    while i < source_array.length
     new_arr << yield(source_array[i])
           i = i + 1
    end
    p "inside method after yield"

    new_arr
  else
    puts "Hey! No block was given!"
  end
end


def reduce(source_array, starting_point)
     total = 0
     
    if block_given?
       
    i = 0
    while i < source_array.length
     total = total + yield(source_array[i])
           i = i + 1
    end
    
    
    total
  else
    puts "Hey! No block was given!"
  end
end

 reduce([1,2,3,4]) { |x, m| x + m  }





