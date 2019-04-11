
require 'rubygems'
require 'nokogiri'
require 'open-uri'
	  require 'pry'

page = Nokogiri::HTML(open("https://wiki.laquadrature.net/Contactez_vos_d%C3%A9put%C3%A9s"))

#récupère un contact
#mail = page.xpath('/html/body/div[1]/div[1]/div/div[2]/div[5]/ul[3]/li[18]')
mail = []
mail = page.css('#mw-content-text > ul > li')
#mail.text
#mail.join(" ")
mail_listed = mail.to_a.join("\n")
puts mail_listed[0..-3]
#				   /html/body/div[1]/div[1]/div/div[2]/div[5]/ul[3]


pry

