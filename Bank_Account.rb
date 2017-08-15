class BankAccount
    def initialize (balance, interest_rate)
      @balance = balance
      @interest_rate = interest_rate
  end


  def deposit (place)
    @balance += place
  end

  def withdrawl(amount)
    @balance -= amount
  end
  def gain_interest
    @balance *(@interest_rate)
  end
end
account_balance = BankAccount.new(100,5.4)
puts account_balance.deposit(10)
