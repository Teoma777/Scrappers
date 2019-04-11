
require 'rubygems'
	require 'nokogiri'         
	  require 'pry'
		require 'open-uri'

def crypto_scrapper

@page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))

@cours = @page.css('a[class="price"]')
@final = Hash.new
@list = @page.css('td[class="text-left col-symbol"]')
 

@currency_list = []
@cours_list = []
 i = 0
while i != @list.count do 

	@cours_list << @cours[i].text
	@currency_list << @list[i].text
	@final[@currency_list[i]] = @cours_list[i]
i += 1
end

puts( @final.map{ |k,v| "#{k} => #{v}" }.sort )

pry
end
crypto_scrapper
