require 'nokogiri'
require 'JSON'
require 'csv'
require 'open-uri'

# scrape pasta name and descriptions from: https://whatsfordinner.com/kitchen-tips/pasta-types-with-pictures/

page = Nokogiri::HTML(URI.open('https://whatsfordinner.com/kitchen-tips/pasta-types-with-pictures/'))
class_name = 'c-article__main'
page_body = page.xpath("//*[@class=\"#{class_name}\"]")
lists = page_body.css('li')


headers = ["Name", "Description"]
pasta_info = []

lists.each do |list|
  pasta_info << list.text.split(':').map {|x| x.strip.to_s}
end

CSV.open("pasta.csv", "w") do |csv|
  csv << headers
  pasta_info.each do |pasta|
    csv << pasta
  end
end

print "done."