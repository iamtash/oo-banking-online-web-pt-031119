class Transfer
  attr_accessor :status

  def initialize(paying, receiving, amount)
    @status = "pending"
  end
  
end
