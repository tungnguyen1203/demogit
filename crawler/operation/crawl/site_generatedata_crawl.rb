module Operation
  module Crawl
    class SiteGeneratedataCrawl
      include Capybara::DSL
      def start
        delete_file_download
        down_file
        rename_file_download
        yield
        
      end

      def read_file
        file = File.read("#{'tmp/chromedriver'}/crawl.json")
        filejson = JSON.parse(file)
      end
      
      def down_file
        visit("http://generatedata.com/")
        find('.Homepage__dataTypeGrid--1qR').find('div', text: 'Name').click(delay:0.2)
        find('.Homepage__dataTypeGrid--1qR').find('div', text: 'Phone').click(delay:0.2)
        find('.Homepage__dataTypeGrid--1qR').find('div', text: 'Email').click(delay:0.2)
        find('.Homepage__dataTypeGrid--1qR').find('div', text: 'Country').click(delay:0.2)
        find('.Homepage__dataTypeGrid--1qR').find('div', text: 'Region').click(delay:0.2)
        find('.Homepage__dataTypeGrid--1qR').find('div', text: 'Word').click(delay:0.2)
        find('.Homepage__exportTypeGrid--3cH').find('.Homepage__core--2z5',text:'JSON').click(delay:0.2)
        find('.Homepage__button--xs_').click(delay:0.2)
        find(:xpath,'//*[@id="root"]/div/div/div[2]/span[2]/button').click(delay:0.2)
        find(:xpath, '//*[@id="root"]/div/footer/div/div[2]/button[2]').click(delay:0.2)
        find(:xpath, '/html/body/div[5]/div[3]/div/div/div[3]/button[2]').click(delay:0.2)
        find(:xpath, '/html/body/div[5]/div[3]/div/div/div[3]/button').click(delay:0.2)
        sleep(5)  
      end

      def delete_file_download
        Dir.foreach('tmp/chromedriver') {|f| File.delete("#{'tmp/chromedriver'}/#{f}") if f != '.' && f != '..'}
      end
    
      def rename_file_download
        Dir.foreach('tmp/chromedriver') {|f| File.rename("#{'tmp/chromedriver'}/#{f}","#{'tmp/chromedriver'}/crawl.json") if f != '.' && f != '..'}
      end
    end
  end
end
