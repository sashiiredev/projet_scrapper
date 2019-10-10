
#require 'rubygems'
require 'nokogiri'   
require 'open-uri'
​
$page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))   
​
coin = Array.new
price = Array.new
coin_hash = Hash.new
​
#classe_coin = '//a[@class = "currency-name-container link-secondary"]'
#classe_price = '//a[@class = "price"]'
​
​
def coin_tab (coin)
    #begin
    #    error = false
        $page.xpath('//*[@class="text-left col-symbol"]').each do |node|
            coin << node.text
        end
        return coin
    #rescue looperror => error
     #   error = true    
    #end
end
​
​
def price_tab (price)
    #begin
    #    error = false
        $page.xpath('//a[@class = "price"]').each do |node|
            price << node.text
        end
        return price
    #rescue looperror => error
     #   error = true    
    #end
end
#p coin_tab (coin)
​
tab1 = Array.new
tab2 = Array.new
​
def zip_tap(tab1, tab2)
    return hash = Hash[tab1.zip(tab2)]
end

put







