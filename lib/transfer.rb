require 'pry'

class Transfer
  attr_accessor :status, :sender, :receiver, :amount

  def initialize(sender, receiver, amount)
    @status = "pending"
    @sender = sender
    @receiver = receiver
    @amount = amount
  end

  def valid?
    self.sender.valid? == true && self.sender.balance >= self.amount && self.receiver.valid? == true ? true : false
  end

  def execute_transaction
    if self.status != "complete" && self.valid? == true
      self.receiver.balance += self.amount
      self.sender.balance -= self.amount
      self.status = "complete"
    else
      self.status = "rejected"
      "Transaction rejected. Please check your account balance."
    end
  end

end
