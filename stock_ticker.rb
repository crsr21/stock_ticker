# stock_ticker.rb

require 'sinatra'
require 'httparty'
require 'nokogiri'


get '/aapl' do

	response = HTTParty.get('http://finance.yahoo.com/q?s=aapl')
	dom = Nokogiri::HTML(response.body)

	price_span = dom.xpath("//span[@id='yfs_l84_aapl']").first
	price = price_span.content

	price
end
get '/aapl' do
	time_span = dom.xpath("//span[@id='yfs_t53_aapl']").first
	time = time_span.content
	time
end


# puts "Input the stock symbol you want to search?"
# stock = gets.chomp.downcase

# response = HTTParty.get('http://finance.yahoo.com/q?s='"#{stock}")
# dom = Nokogiri::HTML(response.body)



# time_span = dom.xpath("//span[@id='yfs_t53_#{stock}']").first
# time = time_span.content

# name_span = dom.xpath("//div[@class='title']/h2").first
# name = name_span.content



# puts "At #{time} the price for #{name} is $#{price} "
