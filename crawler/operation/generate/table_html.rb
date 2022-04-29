
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
    end
  end
end