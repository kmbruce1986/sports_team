class BankAccount

  def initialize(holder_name, balance, type)
    @holder_name = holder_name
    @balance = balance
    @type = type
  end

# getters get or return a value
  def holder_name()
    return @holder_name
  end

  def account_balance()
    return @balance
  end

  def account_type()
    return @type
  end

# setters to set or update a value
  def set_holder_name(name)
    @holder_name = name
  end

  def set_account_balance(new_balance)
    @balance = new_balance
  end

  def set_account_type(new_type)
    @type = new_type
  end

# functionality requires methods!
  def pay_in(ammount)
    @balance += ammount
  end

  def pay_monthly_fee()
    if @type == "Business"
      @balance -= 50
    end
  end

end
