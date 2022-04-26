class Lab

  def divn
    array = []
    count5 = 0
    count3= 0
    puts "Nhập vào số phần tử của mảng"
     n = gets.chomp.to_i
        for i in 1..n
            puts "nhập vào phần tử thứ #{i}"   
            j = gets.chomp.to_i 
            while j<10 || j>100
              puts "nhap lai"   
            j =  gets.chomp.to_i 
            end 
            array.push(j)
        end
        for i in  0...array.length
           if(array[i]% 5 == 0)
              count5+= 1
           elsif (array[i]% 3 == 0)
              count3+= 1
           end
        end
        puts "Thông tin của mảng #{array}"
        puts "Trong mảng này có #{count5} số chia hết cho 5"
        puts "Trong mảng này có #{count3} số chia hết cho 3"
  end

  def hcn
     puts "Nhập vào chiều dài"
     cdai = gets.chomp.to_i
     puts "Nhập vào chiều rộng"
     crong = gets.chomp.to_i
     chuvi = (cdai + crong)*2
     dientich = cdai*crong
     puts "HCN có chiều dài là #{cdai}\n Chiều rộng là #{crong}\n => Chu vi HCN #{chuvi}\n => Diện tích #{dientich}"
  end
  def doc3so
     so1 = gets.to_i
     so2 = gets.to_i
     so3 = gets.to_i
     docso(so1)
     docso(so2)
     docso(so3)
  end
  def docso ( so)
    #  puts "nhập vào một số có 3 chữ số "
    #  so = gets.chomp.to_i
      a= so % 10
      b= (so / 10) % 10
      c = so / 100
       if so <1 || so>999
          puts "Nhập lại"
        else
          
          case c
          when 1
            print "Một trăm "
          when 2
            print "Hai trăm " 
          when 3
            print "Ba trăm " 
          when 4
            print "Bốn trăm " 
          when 5
            print "Năm trăm " 
          when 6
            print "Sáu trăm "
          when 7
            print "Bảy trăm " 
         when 8 
            print "Tám trăm "
          when 9
            print "Chín trăm "
          end

          if b % 10 == 0 && a!= 0 && c != 0
            print "lẻ "
           
          end
          case b
          when 1
            print "mười "
          when 2
            print "hai mươi" 
          when 3
            print "ba mươi" 
          when 4
            print "bốn mươi" 
          when 5
            print "năm mươi" 
          when 6
            print "sáu mươi"
          when 7
            print "bảy mươi" 
          when 8 
            print "tám mươi"
          when 9
            print "chín mươi"
          end
            
            case a
            when 1
              
                print " mốt\n"
              
            when 2
              print " hai\n" 
            when 3
              print " ba\n" 
            when 4
              print " bốn\n" 
            when 5
              print " lăm\n" 
            when 6
              print " sáu\n"
            when 7
              print " bảy\n" 
            when 8
              print " tám\n"
            when 9
              print " chín\n"
            end
        end
  end

  def randomm
     tongdiem =0
     trung = 0
     truot = 0
     tong = 0
     i= 0
      check = "y"
     while true
        puts "Nhập một số từ 0 - 5"
     n =gets.chomp.to_i
        if(n>0 && n<5)
           c= rand(0..5)
        puts c
           if n ==c
           tongdiem +=1
           trung +=1
           else
              truot +=1
           end
           i+=1
           puts  "Số lần đoán trúng #{trung} và Tổng điểm là #{tongdiem}"
           puts " Số lần đoán trượt #{truot}"
           puts "Tổng số lần đoán #{i}"
           puts "Bạn có muốn tiếp tục"
           check = gets.chomp
           if check =="y"
            break
            end
        end
     end
  end
end
Lab.new.randomm