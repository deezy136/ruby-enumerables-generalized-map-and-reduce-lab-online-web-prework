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


def reduce(source_array, starting_point=nil) 
     if starting_point
         total = starting_point
         counter = 0
    else
      total = source_array[0]
      counter = 1
      
   while counter < source_array.size do
    yield(total, source_array[counter])
     counter +=1
 end
   total
 end 

 reduce([1,2,3,4])




