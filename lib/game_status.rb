# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
  [2, 4, 6],
  [0, 4, 8]
]

#def won?(board)
#  WIN_COMBINATIONS.any? {|array| array == true} && position_taken?(board, index) == true
# end

def won?(board)
  WIN_COMBINATIONS.each do |array|
    if array == true && position_taken?(board, index) == true
      puts array
      return true
    end
  end
end
