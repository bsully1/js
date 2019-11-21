require 'active_support/all'
# used to have access to json in ruby ^
# showing data in ruby
num = 2
f = 1.0
string = "Hello!"
sym = :symbol # "symbol"
array = [1,2,3,4]
hash = {
  1 => "one",
  2 => "two",
  3 => "three",
  4 => "four"
}
# below is output from jsonlint which converts our hash into string values
# puts hash.to_json.inspect
json_string = '{"1":"one","2":"two","3":"three","4":"four"}'


parsed = ActiveSupport::JSON.decode(json_string)
puts parsed.inspect

# below shows a value of nil because json doesnt use integers
puts parsed[1].inspect
# below show the ruby code "one"
puts hash[1].inspect

# ajax practice

# ajax is the ability inside a web browser to a different 
# http request