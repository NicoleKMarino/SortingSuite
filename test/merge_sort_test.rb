gem 'minitest', '>= 5.0.0'
require 'minitest/autorun'
require_relative "/Users/Nicole/Documents/mod1/SortingSuite/lib/merge_sort.rb"
require "minitest/pride"
require "pry"

class MergeSortTest < Minitest::Test


  def test_new_sort
    sort_1 = MergeSort.new(["d", "b", "a", "c"])
    tester= ["a", "b", "c", "d"]
    assert_equal tester, sort_1.sort(sort_1.list)
  end

  def test_new_sort_numbers
    sort_2 = MergeSort.new([2,1,4,3])
    tester= [1,2,3,4]
    assert_equal tester, sort_2.sort(sort_2.list)
  end

  def test_one_element_sort
    sort_3 = MergeSort.new([5])
    assert_equal [5], sort_3.sort(sort_3.list)
  end


end
