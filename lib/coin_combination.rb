



  public def coin_combination(coin)
    # coinValue = {25 => "quarter", 10 => "dime", 5 => "nickel", 1 => "penny"}
    quarters = 0
    dime = 0
    nickel = 0
    penny = 0
    coin = coin.to_i
    if coin > 25
      quarters = coin / 25
      coin = coin % 25
      if (coin >= 10)
        dime = coin / 10
        coin = coin % 10
      end
        if (coin >= 5)
          nickel = coin / 5
          coin = coin % 5
        end
          if (coin >= 1)
          penny = coin / 1
          coin = coin % 1
        end
    # coinValue.each do |key, value|
    #   counter = 0;
    #   coin % coinValue.keys == 0
    #   coin = coin / coinValue.keys
    # end
  end
  print "You will have #{quarters} quarters, #{dime} dimes, #{nickel} nickels, #{penny} pennies\n"
end

puts "please enter an amount thats under a dollar."
amount = gets.chomp
coin_combination(amount)
