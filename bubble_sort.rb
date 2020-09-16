# In the name of Allah, the Entirely Merciful, the Especially Merciful
def bubble_sort!(arr = [])
  (arr.length - 1).times do |i| # first iteration
    # puts i #check
    is_sorted = true # frist I assumed that the array sorted but I check that
    length = arr.length - 1 - i # how many times in the second iteration
    length.times do |j| # second iteration
      next unless arr[j] > arr[j + 1] # asking if the element is bigger than the next one

      arr[j], arr[j + 1] = arr[j + 1], arr[j] # swaping values
      is_sorted = false # rewrite the assumtion if it not sorted
    end

    return arr if is_sorted # the assumtion was right so return arr
  end
  arr # as bang method return the same array with sorted values
end

def bubble_sort_by(array)
  swap_made = true
  total_iterations = 0
  while swap_made
    num_swaps = 0
    total_elements = array.length - 1 - total_iterations
    total_elements.times do |i|
      result = yield(array[i], array[i + 1])
      if result.positive?
        temp = array[i]
        array[i] = array[i + 1]
        array[i + 1] = temp
        num_swaps += 1
      end
      next
    end
    swap_made = false unless num_swaps.positive?
    total_iterations += 1
  end
  print array
end

# p bubble_sort!([10, 5, 20, 1001, 8, 3, 1, 9])

# bubble_sort_by(["hi","hello","hey", "h"]) do |left,right|
#     left.length - right.length
# end
