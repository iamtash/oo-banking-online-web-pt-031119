require 'pry'

class BankAccount

  attr_accessor :balance, :status
  attr_reader :name

  def initialize(account_holder)
    @name = account_holder
    @balance = 1000
    @status = "open"
  end

  def deposit(amount)
    self.balance += amount
  end
end
