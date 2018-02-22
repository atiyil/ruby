# reads from random.org API and posts to requestb.in API

require 'net/http'
require 'uri'
require 'json'

# prepare the random.org https request
uri = URI.parse("https://api.random.org/json-rpc/1/invoke")
header = {'Content-Type':'application/json'}
body = {"jsonrpc":"2.0","method":"generateIntegers","params":{"apiKey":"2b7e6575-ab6d-4f2e-9589-d1113f7e7d12","n":10,"min":1,"max":6,"replacement":true,"base":10},"id":124976}
https = Net::HTTP.new(uri.host,uri.port)
https.use_ssl = true
req = Net::HTTP::Post.new(uri.request_uri,header)
req.body = body.to_json

# send the post request and check the result
begin
res = https.request(req)
rescue Exception => e  
  abort e.message
end 

# parse the response
parsed = JSON.parse(res.body)
case res
  when Net::HTTPOK
    if defined? parsed['error']['message'] then 
      abort "ERROR! #{parsed['error']['message']}" 
    end
  else
    abort "ERROR! #{parsed['error']['message']}" 
end

nums = parsed['result']['random']['data']

# sort the numbers and display their counts
nums.sort!
unique = nums.uniq
unique.each {|x| print x,' -> ',nums.count(x); puts}

# print die rolls to stderr
nums.each {|x| STDERR.print x,' '};STDERR.puts

# prepare the requestb.in https request
uri2 = URI.parse("https://requestb.in/ze2ipvze")
header2 = {'Content-Type':'application/json'}
body2 = { "dice": nums }
https2 = Net::HTTP.new(uri2.host,uri2.port)
https2.use_ssl = true
req2 = Net::HTTP::Post.new(uri2.request_uri,header2)
req2.body = body2.to_json

# send the post request and check the result
begin
  res2 = https2.request(req2)
rescue Exception => e  
  abort e.message
end 

case res2
  when Net::HTTPOK
    puts "requestb.in HTTP post is successful"
  else
    abort "ERROR! #{res2.code} #{res2.message} #{res2.body}" 
end
