class Transfer
  attr_accessor :sender, :receiver, :status, :amount

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end

  def valid?
    self.sender.valid? && self.receiver.valid? ? true : false
  end

  def execute_transaction
    if self.status == "pending"
      if self.sender.valid? && self.receiver.valid?
        if self.sender.balance >= self.amount
          self.sender.balance -= self.amount
          self.receiver.balance += self.amount
          self.status = "complete"
        else
          self.status = "rejected"
          "Transaction rejected. Please check your account balance."
        end
      else
        self.status = "rejected"
        "Transaction rejected. Please check the validity of the accounts"
      end
    else
      "Transaction already executed"
    end
  end

  def reverse_transfer
    if self.status == "complete"
      self.sender.balance += self.amount
      self.receiver.balance -= self.amount
      self.status = "reversed"
    end
  end

end
