class BankAccount

  attr_accessor :name, :balance

  def initialize(account_holder)
    @name = account_holder
    @balance = 1000
  end
end
