require 'nokogiri'
require 'net/http'

# example = Net::HTTP.get('example.com', '/index.html')
# File.open('example.html', 'w') do |line|
#   line.puts(example)
# end

https = Net::HTTP.new('example.com', 443)
https.use_ssl = true
response = https.get('/')

doc = Nokogiri::HTML(response.body)
p = doc.at('p')
puts p.content

