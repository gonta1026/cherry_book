puts :apple.class # Symbol
puts ":apple".class # String
puts :apple.object_id # 毎回同じidが出力をされる
puts ":apple".object_id #毎回違うidが出力をされる

hash = {:japan => "yen", :us => "dollar"}
puts hash[:japan] # yen
puts hash[:us] # dollar

hash02 = {japan: "yen", us: "dollar"} # => なしの時は:が後にくる
puts hash02[:japan] # 取り出すときの:の場所は一緒
## NOTE
# シンボルは破壊的な変更ができない。イミュータブル（不変的）
# シンボルは文字列に似ているが文字列より厳格な処理ができる
# シンボルの内部は整数で高速に処理ができる
# イミュータブルなので書き換えができない
# ハッシュのkeyによく使われる

person = {
    name: "keisei",
    age: 30,
    friends: ["tanaka", "yamada"],
    phones: {hoge: "1234-0000", tel: "090-1111-1111"}
}
puts "putsは"
hoge = {hoge: "hoge"}
puts hash03 = {**hoge ,**hash02}  # 展開をしている {:hoge=>"hoge", :japan=>"yen", :us=>"dollar"} mergeメソッドでも良い
puts person[:name] # keisei
puts person[:age] # 30
person[:friends].each do |value|
    puts value
     # tanaka yamada
end
person[:phones].each do |key, value|
    puts value
    # 1234-0000
    # 090-1111-1111
end
puts "check"
name= "name"
puts person[:"#{name}"] # 式展開を使ってシンボルのバリューにアクセスができるよ

def buy_burger_shop(menu, drink: false, potato: false) # キーワード引数　デフォルト引数
    puts menu
    puts drink ? "ドリンクを購入" : ""
    puts potato ? "ポテトを購入" : ""
end
buy_burger_shop("fish", potato: true)

def buy_burger_shop02(menu, drink:, potato:) # キーワード引数　drinkとpotatoを必ず呼び出す必要がある。
    puts menu
    puts drink ? "ドリンクを購入" : ""
    puts potato ? "ポテトを購入" : ""
end
# fish
# 
# ポテトを購入

buy_burger_shop02("salada", drink: true, potato: true)
# salada
# ドリンクを購入
# ポテトを購入


