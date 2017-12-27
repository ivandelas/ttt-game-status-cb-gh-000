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

def won?(board)
  if WIN_COMBINATIONS.any? {|combination| combination == true}
    return true
  end
end

def board_full?(board)
  if board[index].all? && position_taken(board, index).all? && won?(board) == false
    return true
  end
end
    
def draw?(board_full)
  if board_full == true
    return true
end
  