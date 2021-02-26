
Card

@face_val = char # J,Q,K,A
@face_up = bool

.initialize( char ) # takes in a upcase char
.hide #change face_up to false
.reveal #change face_up to true
.show #shows nothing when face_up = false, shows @face_val = true
.== (other_card) #return true if other_card.face_val is same

-------------------------------------------------------------------

Board

@board = [[nil,nil,nil,nil],
         [nil,nil,nil,nil],
        [nil,nil,nil,nil],
        [nil,nil,nil,nil] 
    ]

.fill_board #fill board with shuffled card pairs
.show_board #print board's current state
.won? #return true if all cards revealed
.reveal( guess_pos ) #reveal a card at guess_pos, return the card val

--------------------------------------------------------------------

Game

@guess_pos = [row, col]
@previous_guess = [row, col]

.play

1.Create Board 4x4 size array
    create 4 pairs cards (J, Q, K, A) and random fill in board
2.Show board
3.Prompt input of guess1 , reveal card at that position. 
4.Promt input of guess2, reveal card. If 2 card is same, reveal both permantely and show board
5.Keep getting inputs until all 4 pairs is revealed, game is won