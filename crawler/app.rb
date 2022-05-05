load_path = Dir["./vendor/bundle/ruby/2.7.0/gems/**/lib"]
$LOAD_PATH.unshift(*load_path)
require 'pry'
require 'erb'
require 'json'
require 'capybara'
require 'capybara/dsl'
require './config/capybara'
require './operation/crawl/helper_crawl'
require './operation/crawl/site_generatedata_crawl'
require './operation/generate/table_html'
require 'sinatra'
require 'csv'
require 'axlsx'

# Crawl data
crawl = Operation::Crawl::SiteGeneratedataCrawl.new
crawl.start do
    # Generate TABLE HTML
    html_saved_at = './publics/user_management.html'
    generate = Operation::Generate::TableHtml.new(crawl.read_file, saved_at: html_saved_at)
    generate.generate
    generate.read_write_csv
    generate.read_write_xlsx
    p "Generate HTML: #{html_saved_at}"
end
#  index
get '/' do
    logfile = File.open("./publics/user_management.html")
end

# export csv
get '/download/crawl1' do
    send_file './tmp/chromedriver/crawl.csv'
end

# export xlsx
get '/download/crawl2' do
    send_file './tmp/chromedriver/crawl.xlsx'
end




