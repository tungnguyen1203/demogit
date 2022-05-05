# Block, Proc, lambda, Meta programming, arguments.
## Monkey patching trong ruby
- Ruby được biết đến với ngôn ngữ có cú pháp ngắn ngọn, dễ hiểu. Ngoài ra nó còn là một ngôn ngữ rất linh hoạt, điểu này được thể hiện rõ qua Monkey patching.

Tất cả các class trong ruby đều là Open Class. Có nghĩa là chúng ta có thể thay đổi class bất cứ lúc nào và bất cứ nơi đâu. Chúng ta có thể thêm một method, override một method đã tồn tại. Đây là một trong những sức mạnh của ruby. Thậm chí chúng ta có thể thay đổi một số class chuẩn của Ruby như: String, Array hoặc Hash.

Điều này nghe có vẻ nguy hiểm và chính vì sự mềm dẻo làm cho Ruby trở thành con dao 2 lưỡi nếu chũng ta quá lạm dụng việc sự dụng Open Class hoặc không có cách tổ chức code khi sử dụng Monkey patching.

Sử dụng Monkey Patching để thay đổi class core của Ruby.
- Thêm một method vào String
```ruby
require 'date'
class String
  def to_s_date
    Date.parse(self).strftime('%Y/%m/%d')
  end
end

p '20160605'.to_s_date # "2016/06/05"
```


## Variable argument
- Các method trong rubt có thể nhận 0 hoặc nhiều arguments tùy theo độ ưu tiên của arguments

Các loại arguments:

- Required argument
    - Khi gọi một method, phải cung cấp đủ arguments tới method, trường hợp thừa hoặc thiếu thì ruby sẽ quang ra exception

```ruby
class Argumentt
    def call(a)
        p a
    end
end
Argumentt.new.call("hihi")
 => "hihi"
 ```
 - Optional argument / Sponge argument / Non-required argument
    - có thể define method với số lượng argument tùy ý bằng cách đặt dấu sao (*) (**splat operator**) trước argument. Dấu * nghĩa là bạn có thể truyền vào số lượng argument bất kỳ hoặc không cần truyền và (*args) được xem như là 1 array các arguments
 ```ruby
class Argumentt
    def call(a, *opt)
        p a, opt
    end
end
Argumentt.new.call("hihi", 1, "baba", "gogo")
=> "hihi"
=> [1, "baba", "gogo"]
```
 -  Ngoài **single splat operator** (*), chúng ta có **double splat operator** (**). Cách hoạt động tương tự như single splat operator, là một optional argument và (**args) được xem như là 1 hash các arguments.

```ruby
class Argumentt
    def call(a, **opt)
        p a, opt
    end
end
Argumentt.new.call("hihi",x: 1, b: "baba",c: "gogo")
=> "hihi"
=> {:x=>1, :b=>"baba", :c=>"gogo"}
```
-  Default-valued argument
```ruby
class Argumentt
    def call(a, c=1)
        p a, c
    end
end
Argumentt.new.call(1, 2)
=> 1, 2
Argumentt.new.call(1)
=> 1, 1
```
- Keyword arguments
```ruby
def kw_arg(a: 1, b: 2)
  p a, b
end
kw_arg(a: 1, b: 3)
=>[1, 3]
kw_arg( b: 3)
=> [1, 3]
```
Thứ tự ưu tiên 
- Required argument: a
- Default-valued argument: b
- Optional arguments: c, f
- Keyword arguments: d, e

**Lưu ý** không đặt default argument trước optional argument

# Block
Block là một khối lệnh được đặt trong dấu{..} hoặc
do..end

Quy ước: {...} là một dòng lệnh còn **do..end** là nhiều dòng lệnh

```ruby
def map!
    self.each_with_index do |value, index|
    self[index] = yield(value) #self là 1 tập hợp các phần tử nào đó; value và index là 2 params sử dụng cho chỉ lệnh yield
    end
  end
  array =[1,2,3,4]
  array.map {|i| i *2}
    p array
    => [1, 2, 3, 4]
  array.map! {|i| i *2}
    p array
    => [2, 4, 6, 8]
```
# Proc
Proc là 1 object, cũng có thể nói Proc là 1 Block được đặt tên.
```ruby
p = Proc.new { |n| puts n*n }
[1, 2, 3].each(&p)
[4, 5, 6].each(&p)
=> [1, 4, 6]
=> [16, 25, 36]
```
# lambda
Lambda là một function và không có tên cụ thể.

Nó có thể được sử dụng để gán 1 đoạn code.

Là 1 object

Những gì lambda làm hoàn toàn độc lập với fucntion gọi nó.

Lambda là 1 Proc object.

Lambda đã thể hiện tính chất của một method
```ruby
rs = lambda {|x|  x+1}
  puts rs.call(10)
  rs = ->(x){x+1}
  puts rs.call(3)
  => 11
  => 4
```
Phân biệt Block và Proc
- Proc là một object, còn block thì không
- Proc khi đứng một mình vẫn được định nghĩa còn Block thì không, nó chỉ là 1 thành phần trong 1 câu lệnh, nếu đứng không sẽ không có ý nghĩa gì cả.

- Chỉ truyền được 1 block vào trong danh sách đối số của methods, còn với proc thì có thể truyền nhiều proc vào methods

Phân biệt lambda và Proc
- Đều là Proc object
- Lambda kiểm tra số lượng các tham số của nó nhận và trả về một ArgumentError nếu số lượng đó không phù hợp với số lượng đối số trong method của nó; còn Proc thì nếu không truyền tham số thì proc mặc định tham số đó bằng nil.
```ruby
p = Proc.new { |x| puts x +1 }
p.call(1, 2)
# return 2
l = lambda { |x| puts x +1 }
l.call(1, 2)
# return error
```
- Đối với hàm dùng return trong lambda và proc thì với proc thì sẽ return ngay sau khi thực hiện xong proc, còn với lambda thì vẫn tiếp tục chạy hết hàm sau khi gọi xong lambda.
```ruby
def method_lambda
  lam = lambda { return puts "xin chao" }
  lam.call
  puts "cac ban"
end

# khi gọi lambda trên
method_lambda
# kết quả in ra là
xin chao
cac ban
```
```ruby 
def method_proc
  proc = Proc.new { return puts "xin chao" }
  proc.call
  puts "cac ban"
end
# gọi proc trên
method_proc
# kết quả in ra là
xin chao
```
# Meta programming
Metaprogramming trong Ruby là viết các dòng code có thể thay đổi và tự vận hành cấu trúc ngôn ngữ (như Classes, Modules và Instance variables) trong lúc code đang chạy (runtime). Thậm chí có thể chèn thêm các đoạn code mới trong runtime và chạy các đoạn đó mà không cần khởi động lại chương trình.
## Viết class method
```ruby
class MyClass
  def self.capitalize_name
    name.upcase
  end
end
print MyClass.capitalize_name # => MYCLASS
```
một số method hữu dụng trong metapro
## Open class
trong ruby các class không bao h đóng và có thể chỉnh sửa, ghi đè chúng bất cứ lúc nào
```ruby
class String
  def write_size
    self.size
  end
end
p "hihihi class".write_size
```
## inspect một object
```ruby
class Company
  def name
    @company_name = 'Framgia'
    'Framgia VN'
  end
end
obj = Company.new
puts obj.class # => Company
puts obj.class.instance_methods(false) # => name
obj.name # => Framgia VN
puts obj.instance_variables # => @company_name
```
## send()
send() là một instance method của class Object. Tham số đầu tiền truyền vào hàm là tên của 1 method. Có thể truyền vào cả Sting hoặc Symbol. Tất cả các tham số còn lại đều lần lượt là các tham số truyền vào method đó.
```ruby
class Hello
 def welcome(*args)
   "Welcome " + args.join(' ')
 end
end
obj = Hello.new
puts(obj.send(:welcome, "John", "Doe"))   # => Welcome John Doe
```
link: https://viblo.asia/p/tong-quat-ve-metaprogramming-trong-ruby-6J3ZgORMZmB



