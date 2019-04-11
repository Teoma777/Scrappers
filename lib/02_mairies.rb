
require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'pry'


avernes = Nokogiri::HTML(open("https://www.annuaire-des-mairies.com/95/avernes.html"))

def get_townhall_email(townhall_url)
 townhall_url.xpath('/html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]').map { |element| return element.text }
end 


begin


page = Nokogiri::HTML(open("https://www.annuaire-des-mairies.com/val-d-oise.html"))
hrefs = page.xpath('//*[@class = "lientxt"]').map { |link| link["href"]} #array avec la fin des liens
names = page.xpath('//*[@class = "lientxt"]').map { |nom| nom.text } #array avec les noms des villes 

mail_list = []
array = []
hrefs.each do |i|

array << "https://www.annuaire-des-mairies.com#{i[1..-1]}"


def get_townhall_urls(array)
  array.reduce([]) do |result, elem|
    result << elem.first
  end
end

def analyse_url(url)
  	data = Nokogiri::HTML(open(url))
	mail = data.xpath('/html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]').text
	mail
end

def scraping_each_url(array) ###TRES LENT
  result = []
  array.each do |url|
    result << analyse_url(url)
  end
  result
end
results = scraping_each_url(array)
puts "#{results}"
rescue => e
  puts "Oups petite erreur, mais c'est pas grave" 
end
end

#Hash[names.zip(results.map { |e| e.split /, /})]
#puts Hash
get_townhall_urls(array)
