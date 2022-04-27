# Learn ruby

<h1>Biến</h1>

- Biến là nơi lưu giữ các giá trị bao gồm String, Integer, Boolean, Array, Hashes

- Mỗi biến không bắt đầu bằng chữ in hoa, số và kí tự đặc biệt
- Trong Ruby khi khai báo biến thì không yêu cầu giá trị biến cụ thể
    > ex: myvar = 48
- Biến toàn cục: Khác với biến cục bộ, biến toàn cục được khai báo với tên bắt đầu bằng ký tự $ và biến toàn cục có phạm vi sử dụng trong toàn bộ chương trình.
```ruby
$global_variable = 'Toi chua duoc thay doi.'
def variable_scope
    puts $global_variable = 'Toi da bi thay doi.'
end
variable_scope #Toi da bi thay doi.
$global_variable #Toi da bi thay doi.
```


- Biến cục bộ: Phạm vi sử dụng của biến cục bộ phụ thuộc vào vị trí của biến khi khai báo.
```ruby
#irb 
local_variable = 'Toi nam ngoai method.'
def variable_scope
    puts local_variable = 'Toi nam trong method.'
end

variable_scope #Toi nam trong method
puts local_variable #Toi nam ngoai method
```

- Biến đối tượng: Biến được bắt đầu bằng ký tự @ được gọi là "Biến Đối Tượng", có nghĩa là nó chỉ thuộc về một đối tượng riêng lẻ hoặc một đối tượng của một lớp.
```ruby
class Nguoi

  def initialize(ten)
    @ten = ten
  end

  def show
    puts @ten
  end
end

first = Nguoi.new('tung')
first.show # tung

second = Nguoi.new('nguyen')
second.show # nguyen
```
- Biến lớp: Để định nghĩa biến thuộc class, chúng ta sử dụng ký tự @@ trước tên biến. Khác với instance variable, class variable sẽ được dùng chung cho tất cả các đối tượng của lớp đó.
```ruby
class Dog

  def initialize(leg)
    @@leg = leg
  end

  def show_leg
    puts @@leg
  end

end

first = Dog.new(4)
first.show_leg # 4

second = Dog.new(10)
second.show_leg # 10

first.show_leg # 10
```

- Hằng
    -  Hằng cũng giống như một biến nhưng trong quá trình chạy thì giá trị của hằng là không thay đổi.

<h1>Chuỗi</h1>

- Trong **ruby** là một chuỗi các kí tự được đặt trong ('') hoặc
đặt trọng ("")
- Để  in ra giá trị của chuỗi ta dùng hàm   
---
    puts
    print
*puts thì xuống hàng còn print thì không*

<h1>Symbol</h1>

- Symbol là một Object mà giá trị của nó thường được dùng để đại diện cho tên

    > Ex: **symbol = :hello**

 
<h1>Number</h1>

- Trong ruby có các kiểu dữ liệu sau: 
---
    - Integer   |   Float |     Complex |   BigDecimal |  Rational|

**Integer**: là kiểu dữ liệu number đơn giản nhất, là class để định nghĩa các số nguyên(1, 12, 100...). Integer là object của 2 class khác là Fixnum và Bignum. Nếu một giá trị của số nguyên có giá trị khoảng 31 bits thì được coi là kiểu Fixnum. Còn đối với các số nguyên có giá trị lớn hơn thì thuộc class Bignum. Thông thường thì kiểu dữ liệu Fixnum sẽ phổ biến hơn là Bignum

**Float**: Đây là class để định nghĩa các số thực, sử dụng dấu phẩy động để định nghĩa.
**Complex**: Là class để định nghĩa số phức.

**BigDecimal**: Là class để định nghĩa số thực với độ chĩnh xác cao, được biểu diễn dưới các số thập phân

**Rational**: Là class định nghĩa phân số.
 Trong Ruby thì **Integer** và **Float** là hai class được tích hợp sẵn
<h1>Boolean</h1>

- Là kiểu dữ liệu logic gồm hai giá trị là **true** và **false**
- Trong ruby thì giá trị Null sẽ được định nghĩa là Nil
<h1>Hash</h1>

- Là một dạng câu trúc dữ liệu được lưu dưới dạng **key-value**
---
    //Tạo mới một hash
    car = Hash.new
    //kiểm tra hash
    car.class
<h1>Array</h1>

Array được sử dụng để lưu trữ nhiều dữ liệu với độ dài bao nhiều tùy thích, nghĩa là chúng ta muốn cho bao nhiều phần tử vào cũng được
Array là lớp lưu được dữ kiệu vừa chữ và số.
- Tạo array thông qua từ khóa **new**
```ruby
    arr= Aray.new()
```
- chúng ta có thể khởi tạo một Array với size cho trước bằng cách truyền vào một tham số là giá trị size
```ruby
    arr = Aray.new(10)
```
- Để kiểm tra độ dài của mảng thì có thể dung hàm  **length** hoặc là **Size**
```ruby
    arr.length
    =>  10
     arr.size
    => 10
```
- Thêm phần tử cho mảng
```ruby
    arr = [1,2,3]
    puts arr
    => [1, 2, 3]
```
- Để xóa phần tử đầu tiên của mảng ta dùng **shift**
- Để xóa phần tử cuối cùng của mảng ta dùng **pop**
- Để xóa phần tử đã biết  của mảng ta dùng **delete**
- Để xóa phần tử  với giá trị index của mảng ta dùng **delete_at**

<h1>Câu lệnh điều kiện </h1>

 ## if
 - Câu lệnh điều kiện if dùng để kiểm tra xem 1 điều kiện đúng hay sai. Nếu đúng thì sẽ thực hiện câu lệnh trong **if**
 ```ruby
 if 3>5
  puts "a" #a là giá trị cho trước
 end
 ```
 ## if else
 - Kiểm tra điều kiện nếu đúng thực hiện câu lệnh trong **if** và ngược lại sẽ thực hiện câu lệnh trong **else**
 ```ruby
if a%2==0
puts a
else
puts b # b là giá trị đã khai báo trước
end
```
 ## Toán tử ba ngôi trong ruby
 -  condition ? a :b  {Điều kiện: đúng thì đưa ra a, sai thì đưa ra b}
```ruby
a =5 
a ==5 ? "a" : "b"
```
## even?
- Dùng để kiểm tra số chẵn
```ruby
a =6
if a.even?
puts "a la so chan"
end
```
a = gets.chomp.to_i   
 ## câu lệnh if..eslif..else
 - Kiểu câu lệnh điều kiện này giúp chúng ta có thể kiểm tra nhiều hơn một điều kiện.
 ```ruby
if a <50  
  puts "a nhỏ hơn 50"  
elsif a >= 50 && a <= 60  
  puts "a nằm trong khoảng 50 đến 60"  
elsif a >= 70 && a <= 80  
  puts "a nằm trong khoảng 70 đến 80"  
elsif a >= 80 && a <= 90  
  puts "a nằm trong khoảng 80 đến 90"   
elsif a >= 90 && a <= 100  
  puts "a nằm trong khoảng 90 đến 100"   
end
```
 <h1>Vòng lặp </h1>

 ## for
 ```ruby
    for var in expression do
        //code
    end
```
```ruby
    ex: for i in 0..10 do
            puts "hello"
        end
```
## while 
- Khi biểu thức được truyền vào trong while trả về giá trị là true thì đoạn code bên trong while sẽ được thực hiện
```ruby
    while Điều kiệu do
        //code
    end
```
```ruby
    ex:
    i = 0
    while i < 10 do
    puts "Hello"
    i +=1 # tăng giá trị của i lên 1 đơn vị
    end
```
## Until
- Vòng lặp until thiì ngược lại với vòng lặp while. Nếu như với vòng lặp while điều kiện trả về true đoạn code bên trong sẽ được thực hiện thì đói với vòng lặp until, khi giá trị điều kiện trả về false thì đoạn code bên trong sẽ được thực hiện
```ruby
    until Điều kiện dùng do
        //code
    end
```
```ruby
    ex:
    a = 0
    until a > 10
    puts "Hello"
    a +=1
    end
```
## break: dùng để ngắt vòng lặp.
- Đối với break thì nếu khi nào chúng ta cần chấm dứt vòng lặp thì hãy sử dụng nó, trong ta chỉ cần cho vào bên trong đoạn code của vòng lặp là được
```ruby
ex for i in 1..10
  if i == 5
    break
  end
  puts i
end
```
## next: dùng để bỏ qua vòng lặp
## loop
```ruby
loop do
  # code 
end
```
- Đối với Ruby, chúng ta sử dụng rất nhiều các methods của Array, như: map, each, select, collect, inject, detect.
## Map
- Lấy ra tất cả phần tử của mảng và thực hiện lệnh trong block => đưa ra mảng mới là kết quả sau khi chạy hết tất cả các phần tử của mảng đối với biểu thức trong block:
```ruby
ex:
[1,2,3,4,5,6,7,8,9,10].map{ |e| e * 5 }

# =>  [5, 10, 15, 20, 25, 30, 35, 40, 45, 50]
ex:
[1,2,3,4,5,6,7,8,9,10].map{ |e| e <= 3 }

# =>  [true, true, true, false, false, false, false, false, false, false]

# trong khi sử dụng map thực thi trong block thì kết quả trả về là kiểu dữ liệu kiểu int, string hoặc boolean
```
## select
- Trả về giá trị thỏa mãn điều kiện trong block select
```ruby
[1,2,3,4,5,6,7,8,9,10].select{ |e| e > 5 }

# =>  [6 ,7, 8, 9, 10]
```
## Collect
- Collect khá giống với map: là trả về mang mới gồm  các phầ n từ và thực hiện lệnh trong block 
```ruby
ex:
[1,2,3,4,5,6,7,8,9,10].map{ |e| e * 5 }

# =>  [5, 10, 15, 20, 25, 30, 35, 40, 45, 50]
ex:
[1,2,3,4,5,6,7,8,9,10].map{ |e| e <= 3 }

# =>  [true, true, true, false, false, false, false, false, false, false]

# trong khi sử dụng map thực thi trong block thì kết quả trả về là kiểu dữ liệu kiểu int, string hoặc boolean
```
## each
- thực thi biểu thức trong block và trả về mảng ban đầu chứ không cho ra mảng mới
```ruby
[1,2,3,4,5,6,7,8,9,10].each{ |e| e <= 3 }

# => [1,2,3,4,5,6,7,8,9,10]
```
## Inject
- inject cũng cấp cho ta một biến số và cập nhập giá trị của biến số ấy sau mỗi phần tử của mảng được duyệt qua, điều này giúp ta thực hiện một số phép toán đơn giản hơn.Bên cạnh đó, inject còn có thể nhận giá trị đầu vào và nó cũng sẽ được thực thi biểu thức trong block như 1 phần tử trong mảng:
```ruby
ex: 
[1,2,3,4,5,6,7,8,9,10].inject{ |sum, e| sum += e }
# => 55

[1,2,3,4,5,6,7,8,9,10].inject(15){ |sum, e| sum += e }
# => 70
```
## Detect
- Trả về phần tử đầu tiên thỏa mãn điều kiện trong block
```ruby
ex:
[1,2,3,4,5,6,7,8,9,10].detect{ |e| e > 5 }


# => 6

```
## Map và Map!
```ruby
irb(main):001:0> a = [1,2,3,4]
=> [1, 2, 3, 4]
irb(main):002:0> a.map {|n| n+1}
=> [2, 3, 4, 5]
irb(main):003:0> puts a.inspect
[1, 2, 3, 4]
=> nil
irb(main):004:0> a.map! {|n| n+1}
=> [2, 3, 4, 5]
irb(main):005:0> puts a.inspect
[2, 3, 4, 5]
=> nil
irb(main):006:0>
    - Với map thì sau khi thực thi trong block thì kết quả trả về là một mảng với
    khi tri xuất lại mảng cũ thì giá trị mảng cũ vẫn không mất đi
    - Với map! thì khi truy xuất đến mảng cũ thì giá trị sẽ bị ghi đè
```
# Method.
```ruby
def ten_ham()
    # //code
end

```
- def được viết tắt bởi từ "define" có nghĩa là khai báo một hàm với tên phương thức và các biến số truyền vào trong hàm. Các biến số này có thể có hoặc không.

- Cách gọi hàm thì gọi ra đúng tên hàm mình đã khai báo, biến số có thể truyền vào hoặc không tuỳ theo hàm mà mình đã khai báo. Ví dụ: ten_ham(bien1, bien2)
- Khi kết thúc 1 dòng lệnh thì không cần phải ";"
- Trong ruby method không cần **return** vì dòng cuối cùng trong hàm sẽ là giá trị **return**
- Khi dùng **return** trong hàm sẽ trả về giá trị mà ta mong muốn
- Truyền tham số cho hàm có thể có ngoặc () hoặc không có
```ruby
ex: tomosia (a,b) or tomosia a, b
```
# Class ruby
```ruby
class ten_class
    # //code
end
```
- Với mỗi class thì sẽ có ham khởi tạo **initialize**

    Thông thường hàm khởi tạo thường được dùng đễ tạo biến, gán biến, định dạng param. Ví dụ như truyền vào 1 số nguyên, thì ở hàm khởi tạo ta sẽ ép kiểu dữ liệu cho nó rồi trong các method ta sẽ sử dụng biến đã được ép kiểu để tính toán.
```ruby
ex: class ten_lop
  def initialize
    #todo something
  end
end
```
# Class method và instance method
>> instance method
- Là là method được gọi từ một đôi tượng
>> class method
- là method được gọi từ class
- dung *self* để đại diện cho class đó
```ruby
class DongVat
  def initialize
    puts 'Xin chào bạn!'
  end
 
  def dog
    'Tiếng kêu của con chó là: Go Go'
  end
 
  def cat
    'Tiếng kêu của con mèo là: Mew Mew'
  end
 
  def duck
    'Tiếng kêu của con vịt là: Duck Duck'
  end
 
  # Từ khoá self: đại diện cho tên class là DongVat
  # Có thể dùng DongVat.people
  def self.people
    'Give me some money'
  end
end
 
thu_nuoi = DongVat.new
puts thu_nuoi.dog
puts thu_nuoi.cat
puts thu_nuoi.duck
puts DongVat.people
```