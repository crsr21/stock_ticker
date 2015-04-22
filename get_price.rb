

# require 'httparty'
# require 'nokogiri'




# response = HTTParty.get('http://finance.yahoo.com/q?s=aapl')
# dom = Nokogiri::HTML(response.body)


# price_span = dom.xpath("//span[@id='yfs_l84_aapl']").first
# price = price_span.content


# puts price