require("minitest/autorun")
require("minitest/rg")

require_relative("../bank_account.rb")

class TestBankAccount < MiniTest::Test

  def setup()
    @account = BankAccount.new("Ally", 500, "Business")
  end

  def test_account_name
    # the result, the setup name, and the .method from the file (must match blue text)
    assert_equal("Ally", @account.holder_name())
  end

  def test_account_balance
    assert_equal(500, @account.account_balance())
  end

  def test_account_type
    assert_equal("Business", @account.account_type())
  end

  def test_change_account_name()
    @account.set_holder_name("Upul")
    assert_equal("Upul", @account.holder_name())
  end

  def test_change_account_balance
    @account.set_account_balance(600)
    assert_equal(600, @account.account_balance())
  end

  def test_change_account_type
    @account.set_account_type("Personal")
    assert_equal("Personal", @account.account_type())
  end

  def test_pay_into_account()
    # this is neither a getter or a setter, it is performing an action (a calculation) to change it.
    @account.pay_in(1000)
    assert_equal(1500, @account.account_balance())
  end

  def test_monthly_fee_business()
    @account.pay_monthly_fee()
    assert_equal(450, @account.account_balance())
  end

  def test_monthly_fee_personal()
    # this is a way of testing your data if your @account doesn't have the right data meaning it is a Business not a Personal
    personal_account = BankAccount.new("Alan", 20, "Personal")
    personal_account.pay_monthly_fee()
    assert_equal(20, personal_account.account_balance)
  end

end
