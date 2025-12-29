def bubble_sort(list)
  list.length.times do
    for i in (0...list.length - 1)
      first = list[i]
      second = list[i + 1]
      if first > second
        first, second = second, first
      end
      list[i], list[i + 1] = first, second
    end
  end
  list
end

puts bubble_sort([4,3,78,2,0,2])