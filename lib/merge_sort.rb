class MergeSort
  attr_reader:list

  def initialize(list)
    @list=list
  end

  def sort(list)
    if list.empty?
      puts "This list is empty, not sortable!"
      return true
    elsif list.length == 1
      return list
    else
      mid= (list.length / 2) - 1
      left= list.slice(0..mid)
      right= list.slice(mid+1..list.size)
      sorted_right = self.sort right
      sorted_left = self.sort left
      merge(sorted_left, sorted_right)
    end
  end

  def merge(left, right)
    sorted = []
    until left.empty? or right.empty?
      if left[0] <= right[0]
        sorted << left.shift
      else
        sorted << right.shift
      end
    end
    sorted.concat(left).concat(right)
  end
end
