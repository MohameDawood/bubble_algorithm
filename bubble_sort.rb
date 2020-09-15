# بِسْمِ اللَّـهِ الرَّحْمَـٰنِ الرَّحِيمِ
# In the name of Allah, the Entirely Merciful, the Especially Merciful

def bubble_sort! arr = []
  (arr.length - 2).times do |i| #frist iteration
    #puts i #check
    is_sorted = true #frist I assumed that the array sorted but I check that
    length = arr.length - 1 - i #how many times in the second iteration
    length.times do |i| #second iteration
      if arr[i] > arr[i + 1] #asking if the element is bigger than the next one
        arr[i], arr[i + 1] = arr[i + 1], arr[i] #swaping values
        is_sorted = false #rewrite the assumtion if it not sorted
      end
    end
    return arr if is_sorted #the assumtion was right so return arr
  end
  return arr #as bang method return the same array with sorted values
end
