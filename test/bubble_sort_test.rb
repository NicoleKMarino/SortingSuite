gem 'minitest', '>= 5.0.0'
require 'minitest/autorun'
require_relative "/Users/Nicole/Documents/mod1/SortingSuite/lib/bubble_sort.rb"
require "minitest/pride"
require "pry"

class BubbleSortTest < Minitest::Test


  
  def test_new_sort
    sort_1=BubbleSort.new(["d", "b", "a", "c"])
    tester=["a", "b", "c", "d"]
    assert_equal tester, sort_1.sort
  end

  def test_new_sort_numbers
    sort_2 = BubbleSort.new([2,1,4,3])
    tester= [1,2,3,4]
    assert_equal tester, sort_2.sort
  end

  def test_one_element_sort
    sort_3 = BubbleSort.new([5])
    assert_equal [5], sort_3.sort
  end

  def test_edge_case
    sort_4 = BubbleSort.new([])
    assert_equal true, sort_4.sort
  end


end
