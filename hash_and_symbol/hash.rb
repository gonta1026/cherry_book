
{}.class

hoge = 1;

hash = {"japan" => "yen", "us" => "dollar"}
puts hash["japan"] #yen 
puts hash["us"] #dollar
hash["italy"] = "euro"
puts hash #{"japan"=>"yen", "us"=>"dollar", "italy"=>"euro"}

#hashを使ったループ処理
hash.each do |key, value|
    puts "#{key}は#{value}"
    # japanはyen
    # usはdollar
    # italyはeuro
end

puts hash.length # 3　sizeと同じ

hash.delete("japan")
puts hash #{"us"=>"dollar", "italy"=>"euro"}
puts hash.delete("hoge") { |key| "Not found #{key}!!" } # Not found hoge!!

