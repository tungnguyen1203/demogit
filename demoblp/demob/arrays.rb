number_squared = Proc.new { |n| n * n }
proc = Proc.new{|x| puts x+1}
class Array
  # def map!
  #   self.each_with_index do |value, index|
  #   self[index] = yield(value) #self là 1 tập hợp các phần tử nào đó; value và index là 2 params sử dụng cho chỉ lệnh yield
  #   end
  # end
  # array =[1,2,3,4]
  # array.map {|i| i *2}
  #  p array
  def map!(proc_object)
    self.each_with_index do |value, index|
      self[index] = proc_object.call(value)
    end
  end
  rs = lambda {|x|  x+1}
  puts rs.call(10)
  rs = ->(x){x+1}
  puts rs.call(3)
  
end 
array = [1,2,3,4]
 
array.map!(number_squared)
# p array
# array.each(&proc)


