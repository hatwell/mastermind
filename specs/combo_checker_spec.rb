require('minitest/autorun')
require('minitest/pride')
require_relative '../models/combo_checker'

class ComboCheckerTest < MiniTest::Test

  def setup
    @checker = ComboChecker.new()
  end

  def test_check_function_returns_empty_array_when_no_matches
    assert_equal([], @checker.check(['a','b'], ['c', 'c']))
  end

  def test_check_function_returns_all_yeses_when_match_happens
    assert_equal(['y', 'y'], @checker.check(['a', 'a',], ['a', 'a']))
  end

  def test_check_function_returns_all_maybes_when_right_answer_wrong_order
    assert_equal(['m', 'm'], @checker.check(['a', 'b',], ['b', 'a']))
  end

  def test_check_function_returns_one_y_and_one_m_when_one_in_right_place_and_one_not
    assert_equal(['y', 'm'], @checker.check(['a', 'e', 'b'], ['a','b', 'c']))
    assert_equal(['m','m','m','m'], @checker.check(['a', 'b', 'c', 'd'], ['d', 'c', 'b', 'a']))
  end


end