gem 'minitest', '>= 5.0.0'
require 'minitest/autorun'
require_relative "/Users/Nicole/Documents/mod1/SortingSuite/lib/insertion_sort.rb"
require "minitest/pride"
require "pry"


class BubbleSortTest < Minitest::Test



  def test_new_sort_letters
    sort_1 = InsertionSort.new(["d", "b", "a", "c"])
    tester= ["a", "b", "c", "d"]
    assert_equal tester, sort_1.sort
  end

  def test_new_sort_numbers
    sort_2 = InsertionSort.new([2,1,4,3])
    tester= [1,2,3,4]
    assert_equal tester, sort_2.sort
  end

  def test_one_element_sort
    sort_3 = InsertionSort.new([5])
    assert_equal [5], sort_3.sort
  end

  def test_edge_case
    sort_4 = InsertionSort.new([])
    assert_equal true, sort_4.sort
  end

end
