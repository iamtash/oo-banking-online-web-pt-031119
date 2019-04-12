class BankAccount

  attr_accessor :balance, :status
  attr_reader :name

  def initialize(account_holder)
    @name = account_holder
    @balance = 1000
    @status = "open"
  end

  def deposit(amount)
    binding.pry
    balance += amount
  end
end
