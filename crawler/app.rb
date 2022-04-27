load_path = Dir["./vendor/bundle/ruby/3.0.0/gems/**/lib"]
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
# Crawl data
crawl = Operation::Crawl::SiteGeneratedataCrawl.new
crawl.start do
  # Generate TABLE HTML
  html_saved_at = './publics/user_datatable.html'
  generate = Operation::Generate::TableHtml.new(crawl.file_downloaded, saved_at: html_saved_at)
  generate.generate
  p "Generate HTML: #{html_saved_at}"
end
