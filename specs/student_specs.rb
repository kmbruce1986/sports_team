require("minitest/autorun")
require("minitest/rg")

require_relative("../student.rb")


class TestStudent < MiniTest::Test

  def setup()
    @student = Student.new("Kirsty", "G7", "I can talk", "Ruby")
  end


  def test_get_name()
    assert_equal("Kirsty", @student.get_name())
  end

  def test_get_cohort()
    assert_equal("G7", @student.get_cohort)
  end

  def test_change_name()
    @student.set_name("Kathleen")
    assert_equal("Kathleen", @student.get_name)
  end

  def test_change_cohort()
    @student.set_cohort("G8")
    assert_equal("G8", @student.get_cohort)
  end

  def test_student_talks()
    assert_equal("I can talk", @student.talks)
  end

  def test_favourite_language()
    assert_equal("I love Ruby", @student.language)
  end
end
