 class Wallet

  def add_card(type_of_card_str, cardholder_str, card_num, exp_date_str)
    @list_of_cards = []

    new_card = {
    card: type_of_card_str,
    cardholder: cardholder_str,
    number: card_num,
    expiration: exp_date_str
      }

    @list_of_cards << new_card
  end

  def add_cash(cash_amt)
    @cash = 0
    @cash += cash_amt
  end

  def spend_cash(spend_amt)
    if @cash >= spend_amt
      @cash -= spend_amt
    else
      puts "You can't have negative cash!"
    end
  end

  def display
    @list_of_cards.each do |card|
      puts "Card " + (@list_of_cards.index(card) + 1).to_s

        card.each { |k, v|
          puts "#{k}: #{v}"
        }
    end
  end

  def contents
    puts "You have " + @list_of_cards.length.to_s + " cards and $#{@cash} in your wallet."
  end

end

caromoney = Wallet.new

caromoney.add_card("Visa", "Caroline Kenworthy", 67776629932088, "43/64")
caromoney.display
caromoney.add_cash(35)
caromoney.contents
caromoney.spend_cash(20)
caromoney.contents
caromoney.spend_cash(50)
caromoney.contents