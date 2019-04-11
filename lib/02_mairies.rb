
require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'CSV'

page = Nokogiri::HTML(open("https://www.annuaire-des-mairies.com/val-d-oise.html"))
hrefs = page.xpath('//*[@class = "lientxt"]').map { |link| link["href"]} #array avec la fin des liens
names = page.xpath('//*[@class = "lientxt"]').map { |nom| nom.text }

mail_list = []
array = []
hrefs.each do |i|

array << "https://www.annuaire-des-mairies.com#{i[1..-1]}"

def select_first_array_elem(array)
  array.reduce([]) do |result, elem|
    result << elem.first
  end
end

def analyse_url(url)
  	data = Nokogiri::HTML(open(url))
	mail = data.xpath('/html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]').text
	mail
end

def scraping_each_url(array)
  result = []
  array.each do |url|
    result << analyse_url(url)
  end
  result
end
results = scraping_each_url(array)
puts "#{results}"

end
select_first_array_elem(array)
