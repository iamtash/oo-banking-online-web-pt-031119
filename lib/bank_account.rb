class BankAccount

  attr_accessor :name, :balance, :status

  def initialize(account_holder)
    @name = account_holder
    @balance = 1000
    @status = "open"
  end
end
