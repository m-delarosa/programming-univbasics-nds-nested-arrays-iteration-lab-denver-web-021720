  # Given an Array of 2-element Arrays ( [ [food1, food2], [food3, # food4]....[foodN, foodM]]):
  #
  # Build a new Array that contains strings where each pair of foods is
  # inserted into this template:
  #
  # "I love (inner array element 0) and (inner array element 1) on my pizza""
  # As such, there should be a new String for each inner array, or pair
  
def join_ingredients(src)
  row_index = 0
  inner_results = []
  while row_index < src.count do
    inner_results << "I love #{src[row_index][0]} and #{src[row_index][1]} on my pizza"
    row_index += 1
  end
  inner_results
end

def find_greater_pair(src)
  new_array = []
  row_index = 0
  while row_index < src.count do
    new_array << src[row_index].max
    row_index += 1
  end
  p new_array
end

def total_even_pairs(src)
  total = 0
  row_index = 0
  while row_index < src.count do
    if (src[row_index][0] % 2 == 0) && (src[row_index][1] % 2 == 0)
      total += (src[row_index][0] + src[row_index][1])
    end
    row_index += 1
  end
  total
end
