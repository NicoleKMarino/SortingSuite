class InsertionSort
  attr_reader:list
  def initialize(list)
    @list=list
  end

  def sort
    list=@list
    if list.empty?
      puts "That list is empty! Can't be sorted"
      return true
    elsif list.length == 1
      puts "This list is one element, therfor it is already sorted"
      return list
    else
      (1...list.length).each do |i|
        while list[i] < list[i-1] && i-1 >= 0
          list[i], list[i-1] = list[i-1], list[i]
          i=i-1
        end
      end
      list
    end
  end

end
