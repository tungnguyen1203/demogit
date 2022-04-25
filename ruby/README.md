# Learn ruby

<h1>Biến</h1>

- Biến là nơi lưu giữ các giá trị bao gồm String, Integer, Boolean, Array, Hashes

- Mỗi biến không bắt đầu bằng chữ in hoa, số và kí tự đặc biệt
- Trong Ruby khi khai báo biến thì không yêu cầu giá trị biến cụ thể
    > ex: myvar = 48
- Biến toàn cục: Khác với biến cục bộ, biến toàn cục được khai báo với tên bắt đầu bằng ký tự $ và biến toàn cục có phạm vi sử dụng trong toàn bộ chương trình.

- Biến cục bộ: Phạm vi sử dụng của biến cục bộ phụ thuộc vào vị trí của biến khi khai báo.


- Biến đối tượng
- Biến lớp 
- Hằng
    -  Hằng cũng giống như một biến nhưng trong quá trình chạy thì giá trị của hằng là không thay đổi.

<h1>Chuỗi</h1>

- Trong **ruby** là một chuỗi các kí tự được đặt trong ('') hoặc
đặt trọng ("")
- Để ra giá trị của chuỗi ta dùng hàm   
---
    puts
    print
*puts thĩ xuống hàng còn print thì không*

<h1>Symbol</h1>

- Symbol là một Object mà giá trị của nó thường được dùng để đại diện cho tên

    > Ex: **symbol = :hello**

 
<h1>Number</h1>

- Trong ruby có các kiểu dữ liệu sau: 
---
    - Integer   |   Float |     Complex |   BigDecimal |  Rational|
<h1>Boolean</h1>

- Là kiểu dữ liệu logic gồm hai giá trị là **true** và **false**
- Trong ruby thì giá trị Null sẽ được định nghĩa là Nil
<h1>Hash</h1>

- Là một dạng câu trúc dữ liệu được luư dưới dạng **key-value**
---
    car = Hash.new
    //kiểm tra hash
    car.class
<h1>Array</h1>

Array được sử dụng để lưu trữ nhiều dữ liệu với độ dài bao nhiều tùy thích, nghĩa là chúng ta muốn cho bao nhiều phần tử vào cũng được
Array là lớp lưu được dữ kiệu vừa chữ và số.
```ruby
    arr= Aray.new()
```

**Integer**: là kiểu dữ liệu number đơn giản nhất, là class để định nghĩa các số nguyên(1, 12, 100...). Integer là object của 2 class khác là Fixnum và Bignum. Nếu một giá trị của số nguyên có giá trị khoảng 31 bits thì được coi là kiểu Fixnum. Còn đối với các số nguyên có giá trị lớn hơn thì thuộc class Bignum. Thông thường thì kiểu dữ liệu Fixnum sẽ phổ biến hơn là Bignum

**Float**: Đây là class để định nghĩa các số thực, sử dụng dấu phẩy động để định nghĩa.
**Complex**: Là class để định nghĩa số phức.

**BigDecimal**: Là class để định nghĩa số thực với độ chĩnh xác cao, được biểu diễn dưới các số thập phân

**Rational**: Là class định nghĩa phân số.
 Trong Ruby thì **Integer** và **Float** là hai class được tích hợp sẵn

<h1>Câu lệnh điều kiện </h1>

 ## if
 - Câu lệnh điều kiện if dùng để kiểm tra xem 1 điều kiện đúng hay sai. Nếu đúng thì sẽ thực hiện câu lệnh trong **if**
 ## if else
 - Kiểm tra điều kiện nếu đúng thực hiện câu lệnh trong **if** và ngược lại sẽ thực hiện câu lệnh trong **else**
 ## Toán tử ba ngôi trong ruby
 -  condition ? a :b  {Điều kiện: đúng thì đưa ra a, sai thì đưa ra b}

 <h1>Vòng lặp </h1>

 ## for
 ---
    for var in expression do
        //code
    end
---
    ex: for i in 0..10 do
            puts "hello"
        end

## while 
---
    while Điều kiệu do
        //code
    end
---
    ex:
    i = 0
    while i < 10 do
    puts "Hello"
    i +=1 # tăng giá trị của i lên 1 đơn vị
    end
## Until
--- 
    until Điều kiện dùng do
        //code
    end
---
    ex:
    a = 0
    until a > 10
    puts "Hello"
    a +=1
    end
## break: dùng để ngắt vòng lặp.
## next: dùng để bỏ qua vòng lặp
# Tạo hàm.
```ruby
def ten_ham()
    # //code
end
```
# Class ruby
```ruby
class ten_class
    # //code
end
```

