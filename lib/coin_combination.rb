



  public def coin_combination(cents)
  cents = cents.to_i
     coinValue = {25 => "quarter", 10 => "dime", 5 => "nickel", 1 => "penny"}
     coinValue.each do |key, value|
       coins = ""
       until cents < key
         coins = coins + ((cents/key).to_s) + value
         cents = cents % key
       end
       print " #{coins } \n"
     end

end

puts "please enter an amount thats under a dollar."
amount = gets.chomp
coin_combination(amount)
