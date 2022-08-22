class Bank
  def initialize
    @creditdebit = []
    @balance = 0
  end

  def deposit(money, date)
    @balance += money
    transaction = {}
    transaction[:credit] = money
    transaction[:date] = date
    transaction[:debit] = ' '
    transaction[:balance] = @balance
    @creditdebit << transaction
  end

  def withdrawal(money, date)
    @balance -= money
    transaction = {}
    transaction[:credit] = ' '
    transaction[:date] = date
    transaction[:debit] = money
    transaction[:balance] = @balance
    @creditdebit << transaction
  end

  def statement
    statement = 'date || credit || debit || balance'
    @creditdebit.reverse.collect { |one| statement += "\n#{one[:date]} || #{one[:credit]} || #{one[:debit]} || #{one[:balance]}" }
    statement
  end

end

bank = Bank.new