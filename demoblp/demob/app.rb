array = [1,2,3,4]
array.map! do |n|
  n * n
end
p array
 
array = [1,2,3,4]  
array.map! { |n| n * n }  
p array
