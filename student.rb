class Student

  def initialize(name, cohort, phrase, favourite_language)
    @name = name
    @cohort = cohort
    @phrase = phrase
    @language = favourite_language
  end

  def get_name
    return @name
  end

  def get_cohort
    return @cohort
  end

  def set_name(name)
    @name = name
  end

  def set_cohort(cohort)
    @cohort = cohort
  end

  def talks
    return @phrase
  end

  def language
    return "I love " + @language
  end
end
