
module Operation
  module Generate
    class TableHtml
      def initialize(read_file, opts={})
        @read_file = read_file
        @opts = opts
      end

      def generate
        erb_file = './templates/table.html.erb'
        erb_str = File.read(erb_file)
        renderer = ERB.new(erb_str)
        result = renderer.result(binding)
        File.open(@opts[:saved_at], 'w') do |f|
          f.write(result)
        end

      end

      def read_write_csv
        #csv read, write
        # file = File.read('./tmp/chromedriver/crawl.json')
        # hash = JSON.parse(file)
        CSV.open('./tmp/chromedriver/crawl.csv', 'w') do |csv|
          @headers = @read_file.first.keys
          csv << @headers

          @read_file.each do |item|
            values = item.values
            printable_values = Array.new
            values.each do |value|

              printable_values << value.to_s.gsub(/\[|\]/,'').gsub(/"/,'\'')
            end
            csv << printable_values
          end
        end
      end

      def read_write_xlsx
        #xlsx 
        Axlsx::Package.new do |p|
          p.workbook.add_worksheet(name: 'data') do  |sheet| 
            sheet.add_row @headers
            @read_file.each do |item|
              values = item.values
              printable_values = Array.new
              values.each do |value|
                printable_values << value.to_s.gsub(/\[|\]/,'').gsub(/"/,'\'')
              end
              sheet.add_row printable_values
          end
        end
          p.serialize('./tmp/chromedriver/crawl.xlsx')
        end
      end

      
      
    end
  end
end