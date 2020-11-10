board = [' ' for x in range(10)]

 
def displayBoard():
    print('   |   |')
    print(f' {board[7]} | {board[8]} | {board[9]}')
    print('   |   |')
    print('-----------')
    print('   |   |')
    print(f' {board[4]} | {board[5]} | {board[6]}')
    print('   |   |')
    print('-----------')
    print('   |   |')
    print(f' {board[1]} | {board[2]} | {board[3]}')
    print('   |   |')
	
def makeMove(letter, pos):
    global board
    board[pos] = letter
    
    
def isFree(pos):
    return board[pos] == ' '


def notFull(board):
    return board.count(' ') > 1


def isWinner(board, ch):
    return ((board[7] == ch and board[8] == ch and board[9] == ch) or # across the top
    (board[4] == ch and board[5] == ch and board[6] == ch) or # across the middle
    (board[1] == ch and board[2] == ch and board[3] == ch) or # across the bottom
    (board[7] == ch and board[4] == ch and board[1] == ch) or # down the left side
    (board[8] == ch and board[5] == ch and board[2] == ch) or # down the middle
    (board[9] == ch and board[6] == ch and board[3] == ch) or # down the right side
    (board[7] == ch and board[5] == ch and board[3] == ch) or # diagonal
    (board[9] == ch and board[5] == ch and board[1] == ch)) # diagonal
	
	
	
	
	
def compMove():
    possibleMoves = [x for x, letter in enumerate(board) if letter == ' ' and x != 0]
    move = 0
   
    # Check for possible winning move to take or to block opponents winning move
    for let in ['O','X']:
        for i in possibleMoves:
            boardCopy = board[:]
            boardCopy[i] = let
            if isWinner(boardCopy, let):
                move = i
                return move
 
    import random
    
    # Corners
    cornersOpen = []
    for i in possibleMoves:
        if i in [1,3,7,9]:
            cornersOpen.append(i)
    if cornersOpen:
        move = random.sample(cornersOpen, 1)[0]
        return move
   
    # Center
    if 5 in possibleMoves:
        move = 5
        return move
 
    # Edge
    edgesOpen = []
    for i in possibleMoves:
        if i in [2,4,6,8]:
            edgesOpen.append(i)
 
    if edgesOpen:
        move = random.sample(edgesOpen, 1)[0]
 
    return move
	
	
def main():
    print('Welcome to Tic Tac Toe, to win complete a straight line of your letter (Diagonal, Horizontal, Vertical). The board has positions 1-9 starting at the bottom left.')
    displayBoard()
    
    while notFull(board):
        move = compMove()
        if not move:
            print('Tie!!! No more spaces left to move')
        else:
            makeMove('X', move)
            print(f'Computer1 placed \'X\' in position {move}')
            displayBoard()
    
        if isWinner(board, 'X'):
            print('Noooooo, the computer1 won!!!')
            break
            
        move = compMove()
        if not move:
            print('Tie!!! No more spaces left to move')
        else:
            makeMove('O', move)
            print(f'Computer2 placed \'O\' in position {move}')
            displayBoard()
    
        if isWinner(board, 'O'):
            print('Noooooo, the computer2 won!!!')
            break
    
    if not notFull(board):
        print('Game tied! No more spaces left to move')
    
main()
