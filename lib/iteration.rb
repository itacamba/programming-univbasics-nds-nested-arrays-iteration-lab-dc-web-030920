
def join_ingredients(src)
  # Given an Array of 2-element Arrays ( [ [food1, food2], [food3, # food4]....[foodN, foodM]]):
  #
  # Build a new Array that contains strings where each pair of foods is
  # inserted into this template:
  #
  # "I love (inner array element 0) and (inner array element 1) on my pizza""
  # As such, there should be a new String for each inner array, or pair
  row_results = [] # will save the data from each iteration
  row_index = 0 # row counter
  while row_index < src.length do # this will work the whole length of the array src
    element_index = 0 # element counter
    element_results = [] # will save the elements of each array with every iteration
    while element_index < src[row_index].length do # will work till every element from each row is printed out or saved
      element_results << src[row_index][element_index]
      element_index += 1
    end       #.push != << | push can take multiple arguments, << can only take one argument
    row_results << "I love #{element_results[0]} and #{element_results[1]} on my pizza"
    row_index += 1
  end
  p row_results # will return the message after every iteration of src.length
end



def find_greater_pair(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # Produce a new Array that contains the larger number of each of the pairs
  # that are in the inner Arrays
  row_index = 0
  row_results = []
  while row_index < src.length do
    element_index = 0
    element_results = []
    while element_index < src[row_index].length do
      element_results << src[row_index][element_index]
      element_index += 1
    end
    if element_results[0] > element_results [1]
        element_results = element_results[0]
    else
        element_results = element_results [1]
    end
    row_results.push(element_results)
    row_index += 1
  end
    p row_results

end



def total_even_pairs(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # if both numbers in the pair are even, then add both those numbers to the
  # total
  #
  # As a reminder any number % 2 will return 0 or 1. If the result is 0, then
  # the number was even. Review the operator documentation if you've forgotten
  # this!
row_index = 0
row_results = []
sum = 0
while row_index < src.length do
  element_index = 0
  element_results = []
  while element_index < src[row_index].length do
    element_results << src[row_index][element_index] # we save all the elements into element_results
    if element_results[element_index].even? #we have to filter all element_results into even numbers
      sum += element_results[element_index]
      p element_results[element_index]
    end
    element_index += 1
  end
  row_index += 1
end
  p sum


end


src = [   #element0, #element1
        [ 4, 2],              #row0
        [ 12 , 9],          #row1
        [ 5, 8]            #row2
]
