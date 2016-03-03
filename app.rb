require 'sinatra'

get '/' do
  "<h1>FizzBuzz API</h1><p>Usage:</p><a href='/fizzbuzzes'>/fizzbuzzes</a> or <a href='/fb'>/fb</a><br/><a href='/fizzbuzz/15'>/fizzbuzz/15</a> or <a href='/fb/15'>/fb/15</a>"
end

get '/fizzbuzzes' do
  (1..100).map{|n| fizzbuzz(n)}.join("\n")
end

get '/fb' do
  (1..100).map{|n| fizzbuzz(n)}.join("\n")
end

get '/fizzbuzz/:n' do |n|
  n = n.to_i
  fizzbuzz(n)
end

get '/fb/:n' do |n|
  n = n.to_i
  fizzbuzz(n)
end

def fizzbuzz(n)
  ({6=>'Fizz',10=>'Buzz',0=>'FizzBuzz'}[n**4%15]||n.to_s)
end
