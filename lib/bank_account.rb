class BankAccount
  attr_reader :name, :balance, :status

  def initialize(name)
    @name = name
    @balance = 1000
    @status = "open"
  end
  # 
  # def balance
  #   @balance
  # end
  # 
  # def balance=(balance)
  #   @balance = balance
  # end
    

  def deposit(deposit_quantity)
    @balance += deposit_quantity
  end

  def display_balance
    "Your balance is $#{self.balance}."
  end

  def valid?
    @balance > 0 && self.status == "open" ? true : false
  end
end
