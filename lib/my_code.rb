  def map(array)
    final_array = []
    
    i = 0 
    while i < array.size 
     final_array.push(yield(array[i])
     i += 1 
  end
  final_array
end
  
  
  