class Transfer
  attr_accessor :sender, :receiver, :status, :amount

  def initialize(sender, receiver, amount)
    @sender = sender
    @reciever = receiver
    @amount = amount
    @status = "pending"
  end
end
