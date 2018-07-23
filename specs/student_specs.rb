require("minitest/autorun")
require("minitest/rg")

require_relative("../student.rb")


class TestStudent < MiniTest::Test

def setup()
  @student = Student.new("Kirsty", "G7")
end


def test_get_name()
  assert_equal("Kirsty", @student.get_name())
end

def test_get_cohort()
  assert_equal("G7", @student.get_cohort)
end

end
