  def map(array)
    final_array = []
        i = 0 
    while i < array.size 
     final_array << yield(array[i])
     i += 1 
  end
  final_array
end
  
  def reduce(array, sp=nil)
    
    if sp
      sum = sp 
      i = 0 
    else
      sum = array[0]
      i = 1 
    end 
    
    while i < array.size 
       sum = yield(sum, array[i])
       i += 1
    end 
    sum
  end