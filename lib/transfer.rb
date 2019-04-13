class Transfer
  attr_accessor :status, :sender

  def initialize(sender, receiver, amount)
    @status = "pending"
    @sender = sender
  end

end
