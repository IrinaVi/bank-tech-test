class Bank
  def initialize
    @statement = []
    @balance = 0
  end

  def deposit(amount, date)
    @balance += amount
    transaction = {}
    transaction[:credit] = amount
    transaction[:date] = date
    transaction[:debit] = ' '
    transaction[:balance] = @balance
    @statement << transaction
  end

  def withdraw(amount, date)
    @balance -= amount
    transaction = {}
    transaction[:credit] = ' '
    transaction[:date] = date
    transaction[:debit] = amount
    transaction[:balance] = @balance
    @statement << transaction
  end

  def get_statement
    report = 'date || credit || debit || balance'
    @statement.reverse.collect { |one| report += "\n#{one[:date]} || #{one[:credit]} || #{one[:debit]} || #{one[:balance]}" }
    report
  end

end

bank = Bank.new
bank.deposit(1000, "14/06/2023")
bank.deposit(2000, "13-01-2023")
bank.deposit(5000, "22-01-2023")
bank.withdraw(500, "14-01-2023")
puts bank.get_statement