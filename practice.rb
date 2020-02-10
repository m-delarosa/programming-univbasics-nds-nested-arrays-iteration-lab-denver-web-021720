  # Given an Array of 2-element Arrays ( [ [food1, food2], [food3, # food4]....[foodN, foodM]]):
  #
  # Build a new Array that contains strings where each pair of foods is
  # inserted into this template:
  #
  # "I love (inner array element 0) and (inner array element 1) on my pizza""
  # As such, there should be a new String for each inner array, or pair

# test
# array_1 = [['pepperoni', 'sausage'], ['green olives', 'green peppers'], ['onions', 'pineapple']]

# describe "Write a method called \"join_ingredients\"." do
#   describe "It is given an Array of 2-element Arrays" do
#     it "returns an Array of Strings of the form \"I love element1 and element2 on my pizza\"" do
#       expect(join_ingredients(array_1)).to eq([
#         "I love pepperoni and sausage on my pizza",
#         "I love green olives and green peppers on my pizza",
#         "I love onions and pineapple on my pizza"
#       ])
#     end
#   end
# end
# array_1 = [['pepperoni', 'sausage'], ['green olives', 'green peppers'], ['onions', 'pineapple']]

# def join_ingredients(src)
#   string_array = []
#   row_index = 0
#   inner_results = []
#   while row_index < src.count do
#     inner_results << "I love #{src[row_index][0]} and #{src[row_index][1]} on my pizza"
#     row_index += 1
#   end
#   string_array << inner_results
#   string_array
# end 

# p join_ingredients(array_1)

  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # Produce a new Array that contains the larger number of each of the pairs
  # that are in the inner Arrays
  
  # describe "Write a method called \"find_greater_pair\"" do
  # describe "that takes in argument of an Array of Arrays containing pairs of numbers" do
  #   it "returns the larger numbers from each pair in a new Array" do
  #     expect(find_greater_pair(array_2)).to eq([-1, 30, 0, 14, 19])
  
# array_2 = [[-1, -900], [10, 30], [0, 0], [14, 16 * -2.5], [Math.sin(1), 19]]

# def find_greater_pair(src)
#   new_array = []
#   row_index = 0
#   while row_index < src.count do
#     new_array << src[row_index].max
#     row_index += 1
#   end
#   p new_array
# end

# find_greater_pair(array_2)

  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # if both numbers in the pair are even, then add both those numbers to the
  # total
  #
  # As a reminder any number % 2 will return 0 or 1. If the result is 0, then
  # the number was even. Review the operator documentation if you've forgotten
  # this!
  
  # describe "Write a method called \"total_even_pairs\"" do
  # describe "that takes in argument of an Array of Arrays containing pairs of numbers" do
  #   it "returns the sum of the evens found in both-even pair" do
  #     expect(total_even_pairs(array_3)).to eq(344812)

array_3 = [[86262, 58115], [22558, 97709], [66236, 28056], [25992, 81375], [11248, 56789], [42783, 27353], [70796, 63432], [53234, 63058], [72316, 8675309]]    
      
def total_even_pairs(src)
  total = 0
  # array_to_sum = []
  row_index = 0
  while row_index < src.count do
    element_index = 0
    while element_index < src[row_index].count do
      if src[row_index][element_index] % 2 == 0
        total += src[row_index][element_index]
      end
      element_index += 1
    end
    row_index += 1  
  end
  total
end

total_even_pairs(array_3)