class BubbleSort
  attr_reader:list
  def initialize(list)
    @list=list
  end

  def sort
    list=@list
    if list.length == 1
      puts "This list is one element, therfor it is already sorted"
      return list
    else
      list.each_index do |first|
        (first + 1...list.length).each do |second|
          if list[first] > list[second]
            list[first], list[second] = list[second], list[first]
          end
        end
      end
      list
    end
  end
end
