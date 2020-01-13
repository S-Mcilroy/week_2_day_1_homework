require ('minitest/autorun')
require ('minitest/reporters')
require_relative('../codeclan_students.rb')
Minitest::Reporters.use!
Minitest::Reporters::SpecReporter.new

class TestCodeClan < MiniTest::Test

  def setup
    @codeclanstudent = CodeClanStudents.new('Steven', 'G17')
  end

  #test getters
  def test_student_name
    assert_equal("Steven", @codeclanstudent.student_name)
  end

  def test_cohort
    assert_equal('G17', @codeclanstudent.cohort)
  end

  #test setters
  def test_set_student_name
    @codeclanstudent.set_student_name("John")
    assert_equal("John", @codeclanstudent.student_name)
  end

  def test_set_cohort
    @codeclanstudent.set_cohort("G16")
    assert_equal("G16", @codeclanstudent.cohort)
  end

  def test_student_can_talk
    assert_equal("I can talk", @codeclanstudent.talk())
  end

  def test_student_favorite_language
    assert_equal("I love Ruby", @codeclanstudent.say_favorite_language("Ruby"))
  end
end
