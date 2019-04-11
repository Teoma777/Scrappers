
require 'rubygems'
	require 'nokogiri'         
	  require 'pry'
		require 'open-uri'


#page = Nokogiri::HTML(open("http://ruby.bastardsbook.com/files/hello-webpage.html"))   
#puts page.text   # => Nokogiri::HTML::Document
#puts "the title is : " + page.css("title")[0].name   # => title
#puts page.css("title")[0].text   # => My webpage
#


#AFFICHER UNE LISTE NUMÉROTÉ DES LIENS SUR LA PAGE

#links = page.css("a")
#i = 0
#puts "il y a #{links.length} liens sur ce site : "   # => 6

#while i < links.length  do
#puts " link N° #{ i + 1 } : "
#puts links[i].text   # => Click here
#puts links[i]["href"] # => http://www.google.com
#puts "--------------------------------------------"
#i += 1 
	
#end

#--------------------------------------------
# Selectionne uniquement les liens catégorisés "news"

#news_links = page.css("a").select{|link| link['data-category'] == "news"}
#news_links = page.css("a[data-category=news]")
#news_links.each{|link| puts link['href'] }
        
#puts news_links.class    
#puts news_links      
#
##--------------------------------------------

#doc = Nokogiri::HTML(open("http://www.google.com/search?q=doughnuts"))
#	doc.xpath('//h3[@class = "r"]/a[@class = "l"]').each do |node|
#	  puts node.text
#	end


#def crypto_scrapper

page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))   
crypto_name =  page.css("td[class='currency-name']")
puts crypto_name
pry

#/html/body/div[2]/div/div[1]/div[2]/div[3]/div[2]/div/table/tbody
#puts crypto_name
#
#end


#crypto_scrapper