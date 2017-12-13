  ; - randomize by 1/52 cards. Once chosen, skip if chosen again
  ; enemy is ai ??? 
  ; todo - cards are printed side by side
  ;create a program that will lose if the card reaches 21
  ; ui 

  TITLE STRING PALINDROME (SIMPLFIED .EXE FORMAT)
  .MODEL SMALL
  .386P
  ;---------------------------------------------
  .STACK 64
  ;---------------------------------------------
  .DATA
  NEW_INPUT DB ?
  STATE DB ?
  ;------------- D I S P L A Y S  V A R I A B L E S--------------------- 
    ; main state
    START1_PATH  DB 'menu1.txt', 00H
    FILEHANDLE    DW ?
    START_1    DB 2001 DUP('$')

    ; how to play selected state
    START2_PATH  DB 'hmenu1.txt', 00H
    START_2    DB 2001 DUP('$') 

    ; exit selected state
    START3_PATH  DB 'xmenu1.txt', 00H
    START_3    DB 2001 DUP('$') 

    ; how to play
    HOW_PATH  DB 'how.txt', 00H
    HOW    DB 2001 DUP('$')  

  ;---------------------------------------------------
MESSAGE DB " _________           _________           _________           _________ ", 10, 13
        DB "|A        |         |A        |         |A        |         |A        |", 10, 13
        DB "|+   *    |         |O  /~\   |         |# _   _  |         |@   *    |", 10, 13
        DB "|    !    |         |  / ^ \  |         | / ~V~ \ |         |   / \   |", 10, 13
        DB "|  *-+-*  |         | (     ) |         | \ Bej / |         |  /_@_\  |", 10, 13
        DB "|    |    |         |  \ v /  |         |  \ # /  |         |    !    |", 10, 13
        DB "|   ~~~  +|         |   \_/  O|         |   `.'  #|         |   ~ ~  @|", 10, 13
        DB "|        V|         |        V|         |        V|         |        V|", 10, 13
        DB " ~~~~~~~~~           ~~~~~~~~~           ~~~~~~~~~           ~~~~~~~~~ ", 10, 13, '$'

HIDDEN_CARD  DB " _________ ", 10, 13, '$'
HIDDEN_CARD1 DB "|         |", 10, 13, '$'
HIDDEN_CARD2 DB "|         |", 10, 13, '$'
HIDDEN_CARD3 DB "|         |", 10, 13, '$'
HIDDEN_CARD4 DB "|         |", 10, 13, '$'
HIDDEN_CARD5 DB "|         |", 10, 13, '$'
HIDDEN_CARD6 DB "|         |", 10, 13, '$'
HIDDEN_CARD7 DB "|         |", 10, 13, '$'
HIDDEN_CARD8 DB " ~~~~~~~~~ ", 10, 13, '$'
    H_ACE     DB " _________ ", 10, 13, '$'
    H_ACE1    DB "|A        |", 10, 13, '$'
    H_ACE2    DB "|# _   _  |", 10, 13, '$'
    H_ACE3    DB "| / ~V~ \ |", 10, 13, '$'
    H_ACE4    DB "| \ Bej / |", 10, 13, '$'
    H_ACE5    DB "|  \ # /  |", 10, 13, '$'
    H_ACE6    DB "|   `.'  #|", 10, 13, '$'
    H_ACE7    DB "|        V|", 10, 13, '$'
    H_ACE8    DB " ~~~~~~~~~ ", 10, 13, '$'


    C_TWO   DB " _________ ", 10, 13, '$'
    C_TWO1  DB "|2        |", 10, 13, '$'
    C_TWO2  DB "|+        |", 10, 13, '$'
    C_TWO3  DB "|    +    |", 10, 13, '$'
    C_TWO4  DB "|         |", 10, 13, '$'
    C_TWO5  DB "|    +    |", 10, 13, '$'
    C_TWO6  DB "|        +|", 10, 13, '$'
    C_TWO7  DB "|        Z|", 10, 13, '$'
    C_TWO8  DB " ~~~~~~~~~ ", 10, 13, '$'


    C_THREE   DB " _________ ", 10, 13, '$'
    C_THREE1  DB "|3        |", 10, 13, '$'
    C_THREE2  DB "|+   +    |", 10, 13, '$'
    C_THREE3  DB "|         |", 10, 13, '$'
    C_THREE4  DB "|    +    |", 10, 13, '$'
    C_THREE5  DB "|         |", 10, 13, '$'
    C_THREE6  DB "|    +   +|", 10, 13, '$'
    C_THREE7  DB "|        E|", 10, 13, '$'
    C_THREE8  DB " ~~~~~~~~~ ", 10, 13, '$'


    C_FOUR   DB " _________ ", 10, 13, '$'
    C_FOUR1  DB "|4        |", 10, 13, '$'
    C_FOUR2  DB "|+        |", 10, 13, '$'
    C_FOUR3  DB "|  +   +  |", 10, 13, '$'
    C_FOUR4  DB "|         |", 10, 13, '$'
    C_FOUR5  DB "|  +   +  |", 10, 13, '$'
    C_FOUR6  DB "|        +|", 10, 13, '$'
    C_FOUR7  DB "|        4|", 10, 13, '$'
    C_FOUR8  DB " ~~~~~~~~~ ", 10, 13, '$'


    C_FIVE   DB " _________ ", 10, 13, '$'
    C_FIVE1  DB "|5        |", 10, 13, '$'
    C_FIVE2  DB "|+        |", 10, 13, '$'
    C_FIVE3  DB "|  +   +  |", 10, 13, '$'
    C_FIVE4  DB "|    +    |", 10, 13, '$'
    C_FIVE5  DB "|  +   +  |", 10, 13, '$'
    C_FIVE6  DB "|        +|", 10, 13, '$'
    C_FIVE7  DB "|        S|", 10, 13, '$'
    C_FIVE8  DB " ~~~~~~~~~ ", 10, 13, '$'


    C_SIX   DB " _________ ", 10, 13, '$' 
    C_SIX1  DB "|6        |", 10, 13, '$'
    C_SIX2  DB "|+ +   +  |", 10, 13, '$'
    C_SIX3  DB "|         |", 10, 13, '$'
    C_SIX4  DB "|  +   +  |", 10, 13, '$'
    C_SIX5  DB "|         |", 10, 13, '$'
    C_SIX6  DB "|  +   + +|", 10, 13, '$'
    C_SIX7  DB "|        9|", 10, 13, '$'
    C_SIX8  DB " ~~~~~~~~~ ", 10, 13, '$'

    C_SEVEN   DB " _________ ", 10, 13, '$'
    C_SEVEN1  DB "|7        |", 10, 13, '$'
    C_SEVEN2  DB "|+ +   +  |", 10, 13, '$'
    C_SEVEN3  DB "|    +    |", 10, 13, '$'
    C_SEVEN4  DB "|  +   +  |", 10, 13, '$'
    C_SEVEN5  DB "|         |", 10, 13, '$'
    C_SEVEN6  DB "|  +   + +|", 10, 13, '$'
    C_SEVEN7  DB "|        L|", 10, 13, '$'
    C_SEVEN8  DB " ~~~~~~~~~ ", 10, 13, '$'

    C_EIGHT   DB " _________ ", 10, 13, '$' 
    C_EIGHT1  DB "|8 +   +  |", 10, 13, '$'
    C_EIGHT2  DB "|+        |", 10, 13, '$'
    C_EIGHT3  DB "|  +   +  |", 10, 13, '$'
    C_EIGHT4  DB "|         |", 10, 13, '$'
    C_EIGHT5  DB "|  +   +  |", 10, 13, '$'
    C_EIGHT6  DB "|        +|", 10, 13, '$'
    C_EIGHT7  DB "|  +   + 8|", 10, 13, '$'
    C_EIGHT8  DB " ~~~~~~~~~ ", 10, 13, '$'

    C_NINE    DB " _________ ", 10, 13 , '$'
    C_NINE1   DB "|9 +   +  |", 10, 13, '$'
    C_NINE2   DB "|+        |", 10, 13, '$'
    C_NINE3   DB "|  +   +  |", 10, 13, '$'
    C_NINE4   DB "|    +    |", 10, 13, '$'
    C_NINE5   DB "|  +   +  |", 10, 13, '$'
    C_NINE6   DB "|        +|", 10, 13, '$'
    C_NINE7   DB "|  +   + 6|", 10, 13, '$'
    C_NINE8   DB " ~~~~~~~~~ ", 10, 13, '$'


    C_TEN    DB " _________ ", 10, 13 , '$'
    C_TEN1   DB "|10+   +  |", 10, 13, '$'
    C_TEN2   DB "|+   +    |", 10, 13, '$'
    C_TEN3   DB "|  +   +  |", 10, 13, '$'
    C_TEN4   DB "|         |", 10, 13, '$'
    C_TEN5   DB "|  +   +  |", 10, 13, '$'
    C_TEN6   DB "|    +   +|", 10, 13, '$'
    C_TEN7   DB "|  +   +01|", 10, 13, '$'
    C_TEN8   DB " ~~~~~~~~~ ", 10, 13, '$'


    C_JACK    DB " _________ ", 10, 13, '$' 
    C_JACK1   DB "|J /~~|_  |", 10, 13, '$'
    C_JACK2   DB "|+ | o`,  |", 10, 13, '$'
    C_JACK3   DB "|  | -|   |", 10, 13, '$'
    C_JACK4   DB "| =~)+(_= |", 10, 13, '$'
    C_JACK5   DB "|   |- |  |", 10, 13, '$'
    C_JACK6   DB "|  `.o | +|", 10, 13, '$'
    C_JACK7   DB "|  ~|__/ J|", 10, 13, '$'
    C_JACK8   DB " ~~~~~~~~~ ", 10, 13, '$'


    C_QUEEN  DB " _________ ", 10, 13, '$' 
    C_QUEEN1 DB "|Q |~~~|  |", 10, 13, '$'
    C_QUEEN2 DB "|+ /o,o\  |", 10, 13, '$'
    C_QUEEN3 DB "|  \_-_/  |", 10, 13, '$'
    C_QUEEN4 DB "| _-~+_-~ |", 10, 13, '$'
    C_QUEEN5 DB "|  /~-~\  |", 10, 13, '$'
    C_QUEEN6 DB "|  \o`o/ +|", 10, 13, '$'
    C_QUEEN7 DB "|  |___| Q|", 10, 13, '$'
    C_QUEEN8 DB " ~~~~~~~~~ ", 10, 13, '$'


    C_KING   DB " _________ ", 10, 13 , '$'
    C_KING1  DB "|K |/|\|  |", 10, 13, '$'
    C_KING2  DB "|+ /o,o\  |", 10, 13, '$'
    C_KING3  DB "|  \_-_/  |", 10, 13, '$'
    C_KING4  DB "| ~-_-~-_ |", 10, 13, '$'
    C_KING5  DB "|  /~-~\  |", 10, 13, '$'
    C_KING6  DB "|  \o`o/ +|", 10, 13, '$'
    C_KING7  DB "|  |\|/| X|", 10, 13, '$'
    C_KING8  DB " ~~~~~~~~~ ", 10, 13, '$'



    PRINT    DB    10, 13, 'Hit or Stand? (h/s) $'
    PRINT_WIN DB 10, 13, 'You win!$'
    PRINT_LOSE DB 10, 13, 'You lost.$'
    PRINT_DRAW DB 10, 13, 'Draw!$'
    
    PRINT_1 DB 'Computer is making a move.$'
    PRINT_2 DB 'Computer is making a move..$'
    PRINT_3 DB 'Computer is making a move...$'

    KBINPUT1  DB ?, '$'
    KBINPUT2  DB ?, '$'

    QUIT1 DB 'q$'
    QUIT2 DB 'Q$'
    TERMINATE_STR DB ' T H A N K  Y O U  F O R  P L A Y I N G ! ! !  $'
    EXIT_STR DB 10, 13, 10, 13, 'PRESS ESC TO EXIT$'
    INSTRUCTIONS DB "Press 'h' to hit. Press any other keys to stand$"

    MAXLEN DW 30
    MONEY_INIT DW 90
    PLAYER_CARDVAL DB 0, '$'
    ENEMY_CARDVAL DB 0, '$'
    SCOREHOLDER DB 0

    TEMP_LOC DB 36
    TEMP_LOC2 DB 0
    PRINT_LOC DB 50
    PRINT_LOC2 DB 22
    SETUP_LOC DB 42
    CARDVAL_MSG DB "You're current card value is: $"
    RAND_NUM DB 0000
    temp_randvalH db 03
    temp_randvalL db 07
   
    CURR_COMPSCORE DB 'Computer score:', 10, 13, '$'
    CURR_PLAYERSCORE DB 'Player score: ', 10, 13, '$'
  ;---------------------------------------------------------------------------------------------
  .CODE
  MAIN PROC FAR

    MOV AX, @data
    MOV DS, AX
    MOV ES, AX

    ;---- M A I N  M E N U  S T A T E S -------
    MOV AH, 3DH    
    MOV AL, 00                  
    LEA DX, START1_PATH         ; open start is selected display
    INT 21H
    MOV FILEHANDLE, AX
    MOV AH, 3FH          
    MOV BX, FILEHANDLE    
    MOV CX, 2000           
    LEA DX, START_1             ; save file contents to a variable
    INT 21H
    MOV AH, 3EH                 ; request close file
    MOV BX, FILEHANDLE    
    INT 21H

    MOV AH, 3DH    
    MOV AL, 00                  
    LEA DX, START2_PATH         ; open how to play is selected display
    INT 21H
    MOV FILEHANDLE, AX
    MOV AH, 3FH          
    MOV BX, FILEHANDLE    
    MOV CX, 2000           
    LEA DX, START_2             ; save file contents to a variable
    INT 21H
    MOV AH, 3EH                 ; request close file
    MOV BX, FILEHANDLE    
    INT 21H

    MOV AH, 3DH    
    MOV AL, 00                  
    LEA DX, START3_PATH         ; open exit is selected display
    INT 21H
    MOV FILEHANDLE, AX
    MOV AH, 3FH          
    MOV BX, FILEHANDLE    
    MOV CX, 2000           
    LEA DX, START_3             ; save file contents to a variable
    INT 21H
    MOV AH, 3EH                 ; request close file
    MOV BX, FILEHANDLE    
    INT 21H

    MOV AH, 3DH    
    MOV AL, 00                  
    LEA DX, HOW_PATH            ; open how to play display
    INT 21H
    MOV FILEHANDLE, AX
    MOV AH, 3FH          
    MOV BX, FILEHANDLE    
    MOV CX, 2000           
    LEA DX, HOW                 ; save file contents to a variable
    INT 21H
    MOV AH, 3EH                 ; request close file
    MOV BX, FILEHANDLE    
    INT 21H
    ;---- E N D  O F  L O A D I N G  O F  S T A T E S ----------

  START_SLCT:
    CALL _CLEAR_SCREEN
    MOV   DL, 0                 ; set cursor to 0,0 
    MOV   DH, 0                 ; for entire screen coverage
    CALL  _SET_CURSOR

    MOV STATE, 01               ; set state to 1 
    LEA DX, START_1             ; display start is selected
    CALL DISPLAY_STR
    JMP   LISTENER
  HOW_SLCT:
    MOV STATE, 02               ; set state to 3
    LEA DX, START_2             ; display exit is selected
    CALL DISPLAY_STR
    JMP   LISTENER
  EXIT_SLCT:
    MOV STATE, 03               ; set state to 2
    LEA DX, START_3             ; display how to play is selected
    CALL DISPLAY_STR
    JMP   LISTENER

  RIGHT_MOV:                    ; right arrow navigation
    MOV   DL, 0                 ; set cursor to 0,0 
    MOV   DH, 0                 ; for entire screen coverage
    CALL  _SET_CURSOR           
    CALL _CLEAR_SCREEN          ; reset the screen before display
    
    CMP STATE, 01               ; moving to how to play is selected display
    JE HOW_SLCT
    CMP STATE, 02               ; moving to exit is selected display
    JE EXIT_SLCT
    JMP START_SLCT              ; when exit is selected moves back to start is selected

  LEFT_MOV:                     ; left arrow navifation
    MOV   DL, 0                 ; set cursor to 0,0 
    MOV   DH, 0                 ; for entire screen coverage
    CALL  _SET_CURSOR           
    CALL _CLEAR_SCREEN          ; reset the screen before display
    
    CMP STATE, 01               ; jump to exit when start is the current selected option
    JE EXIT_SLCT
    CMP STATE, 02               ; moving to start is selected display
    JE START_SLCT
    JMP HOW_SLCT                ; moving to how to play is selected display 

  BACK_MAIN:
    CMP STATE, 04               ; check if current screen is how to play display
    JE START_SLCT
    JMP LISTENER                ; if not do nothing

  HOW_DISPLAY:
    MOV STATE, 04               ; set state to 2
    LEA DX, HOW                 ; display how to play the game
    CALL DISPLAY_STR
    JMP LISTENER

    LISTENER:
      MOV NEW_INPUT, '$'      ; clear input holder
      CALL _GET_KEY           ; listen for inputs

      CMP NEW_INPUT, 4DH      ; right arrow key press
      JE RIGHT_MOV

      CMP NEW_INPUT, 4BH      ; left arrow key press
      JE LEFT_MOV

      CMP NEW_INPUT, 1B       ; esc press [;!change to enter!;]
      JE EVENT

      CMP NEW_INPUT, '$'        ; any other key press
      JNE BACK_MAIN            ; going back to title screen from how to play display

      JMP LISTENER

  EVENT:
    MOV   DL, 0                 ; set cursor to 0,0 
    MOV   DH, 0                 ; for entire screen coverage
    CALL  _SET_CURSOR           
    CALL _CLEAR_SCREEN          ; reset the screen before display

    CMP STATE, 01               ; start game is selected
    JE GAME
    CMP STATE, 02               ; how to play is selected
    JE HOW_DISPLAY
    JMP FIN                     ; exit game 

  CALL _CLEAR_SCREEN

  GAME: 

  LEA DX, CURR_COMPSCORE        ; current computer points
  CALL DISPLAY_STR

  LEA DX, CURR_PLAYERSCORE      ; current player points   
  CALL DISPLAY_STR

  LEA DX, INSTRUCTIONS          ; player choices
  CALL DISPLAY_STR

  MOV TEMP_LOC, 18              ; cursor for PLAYER
  MOV TEMP_LOC2, 10
  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  CALL PLAYER_MOVE              ; player's turn

  MOV SCOREHOLDER, 0            ; reset player's points

  MOV   CX, 0200H
  MOV   DX, 054FH
  CALL CUSTOM_CLEAR_SCREEN      ; custom clear screen

  MOV TEMP_LOC, 38              ; cursor for DEALER
  mov TEMP_LOC2,00
  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR
  
  CALL ENEMY_MOVE               ; dealer's turn
  MOV SCOREHOLDER, 0            ; reset dealer's points

  ADD PLAYER_CARDVAL, '0'       ; convert to string value of int

  LEA DX, PLAYER_CARDVAL        ; display the card value
  CALL DISPLAY_STR

  ADD ENEMY_CARDVAL, '0'        ; convert to string value of int

  LEA DX, ENEMY_CARDVAL         ; display the card value
  CALL DISPLAY_STR

  MOV AL, PLAYER_CARDVAL        ; moving player points to AL
  CMP AL, ENEMY_CARDVAL         ; compare if player's points are higher
  JG WIN
  JL LOSE
  JE DRAW

  FIN:
  CALL _TERMINATE                 ; early terminate from game screen


  FINISH:
  
    MOV DL, PRINT_LOC
    MOV DH, PRINT_LOC2
    CALL _SET_CURSOR
  
    LEA DX, EXIT_STR                ; display how to exit the game
    MOV AH, 09
    INT 21H
  B10:
    MOV NEW_INPUT, '$'              ; clear input holder
    CALL _GET_KEY                   ; listen for inputs

    CMP NEW_INPUT, 1B               ; esc key press
    JNE B10                         ; loop in listening for esc key press
    CALL _TERMINATE

  DRAW:
    LEA DX, PRINT_DRAW              ; Draw result display
    CALL DISPLAY_STR
    JMP FINISH
  WIN:
    LEA DX, PRINT_WIN               ; Player wins display
    CALL DISPLAY_STR
    JMP FINISH
  LOSE:
    MOV DL, PRINT_LOC   
    MOV DH, 21
    CALL _SET_CURSOR
    LEA DX, PRINT_LOSE              ; Dealer wins display
    CALL DISPLAY_STR


    MOV   CX, 1330H
    MOV   DX, 184FH
    call custom_clear_screen
    JMP FINISH
  ;------------------------------------------------------------
  GAME_SETUP PROC  NEAR
    CALL SETUP_ENEMY                  ; give ai 2 cards, one hidden one not
    CALL SETUP_PLAYER                 ; give player 2 cards
    RET
  GAME_SETUP ENDP
  ;------------------------------------------------------------  
  SETUP_ENEMY PROC  NEAR
  
    CALL GIVE_CARD
    MOV DL, SCOREHOLDER
    ADD ENEMY_CARDVAL, DL
    MOV SCOREHOLDER, 0

    CALL DISPLAY_HIDDEN
    RET
  SETUP_ENEMY ENDP
  ;------------------------------------------------------------  
  SETUP_PLAYER PROC  NEAR
  
    CALL GIVE_CARD
    MOV DL, SCOREHOLDER
    ADD PLAYER_CARDVAL, DL
    MOV SCOREHOLDER, 0


    CALL GIVE_CARD
    MOV DL, SCOREHOLDER
    ADD PLAYER_CARDVAL, DL
    MOV SCOREHOLDER, 0
    RET
  SETUP_PLAYER ENDP
  ;------------------------------------------------------------
  _SET_CURSOR PROC  NEAR
      MOV   AH, 02H
      MOV   BH, 00
      INT   10H
      RET
  _SET_CURSOR ENDP
  ;------------------------------------------------------------
  _GET_KEY  PROC  NEAR
      MOV   AH, 01H                 ; check for input
      INT   16H
      JZ    __LEAVETHIS             ; no input returns to the caller 
      MOV   AH, 00H   
      INT   16H
      MOV   NEW_INPUT, AH           ; set the value of the input
    __LEAVETHIS:
      RET
  _GET_KEY  ENDP
  ;------------------------------------------------------------
  _CLEAR_SCREEN PROC NEAR
      MOV   AX, 0600H
      MOV   BH, 07H                 ; default dosbox colors
      MOV   CX, 0000H               ; from index (0,0)
      MOV   DX, 184FH               ; to index (24, 79)
      INT   10H
      RET
  _CLEAR_SCREEN ENDP
   ;------------------------------------------------------------
  CUSTOM_CLEAR_SCREEN PROC NEAR
      MOV   AX, 0600H
      MOV   BH, 07H
      INT   10H
      RET
  CUSTOM_CLEAR_SCREEN ENDP
  ;------------------------------------------------------------

    print1 proc near
    
    MOV DL, PRINT_LOC
    MOV DH, PRINT_LOC2
    CALL _SET_CURSOR

    MOV   CX, 143CH
    MOV   DX, 184FH
    call custom_clear_screen
    lea dx, print_1
    call display_str
    
    jmp delay2
    ret
    print1 endp

    print2 proc near
    
    MOV DL, PRINT_LOC
    MOV DH, PRINT_LOC2
    CALL _SET_CURSOR


    lea dx, print_3
    call display_str
  
    jmp delay2
    ret
    print2 endp

    print3 proc near
    MOV DL, PRINT_LOC
    MOV DH, PRINT_LOC2
    CALL _SET_CURSOR


    lea dx, print_3 
    call display_str
    
    jmp delay2
    ret
    print3 endp
  ;------------------------------------------------------------
  ENEMY_MOVE PROC NEAR

  ;another delay request
  ; start delay

  mov bp, 100
  mov si, 50
  delay2:
  dec bp
  nop
  jnz delay2
  dec si

  cmp si, 10
  je print1

  cmp si, 30
  je print2

  cmp si, 45
  je print3

  cmp si,0
  jnz delay2

  ; end delay

  E_HIT:
  CALL GIVE_CARD ;CALL GIVE_CARD THEN CHECK IF BLACKJACK

;print player cardval
;  MOV DL, 0
;  MOV DH, 0
;  CALL _SET_CURSOR
;  LEA DX, PLAYER_CARDVAL
;  CALL DISPLAY_STR

;print ai card val
;  MOV DL, 0
;  MOV DH, 2
;  CALL _SET_CURSOR
;  LEA DX, SCOREHOLDER
;  CALL DISPLAY_STR

  CMP SCOREHOLDER, 21
  JG WIN

  MOV AL, PLAYER_CARDVAL
  CMP AL, SCOREHOLDER
  JL LOSE

  CMP AL, 17
  JGE TRY_DRAW


  JMP ENEMY_MOVE

  TRY_DRAW:
  CMP AL, SCOREHOLDER
  JE DRAW
  JMP ENEMY_MOVE

  __ret:
  MOV BL, SCOREHOLDER
  MOV ENEMY_CARDVAL, BL
  RET
  ENEMY_MOVE ENDP
  ;------------------------------------------------------------
  PLAYER_MOVE PROC NEAR
      MOV DL, 00
      MOV DH, 08
      CALL _SET_CURSOR

      LEA DX, PRINT           ; hit or stand choice
      CALL DISPLAY_STR

      CALL ACCEPT_STR1        ; take the selected choice

      MOV BH, 'h'             ; set bh to 'q'
      CMP KBINPUT1, BH        ; check if hit
      JNE _RET                ; if not stand by default

      HIT:
        CALL GIVE_CARD        ; call give card
        CMP SCOREHOLDER, 21   ; check if over 21
        JG LOSE
        JMP PLAYER_MOVE       ; else, player's move again  
      _RET:
        MOV BL, SCOREHOLDER     ; take the current score and save to BL
        MOV PLAYER_CARDVAL, BL  ; save the score value to the player 
        RET
  PLAYER_MOVE ENDP
  ;------------------------------------------------------------
  RANDOMIZE PROC NEAR
      RANDSTART:
      MOV AH, 00h     ; interrupts to get system time        
      INT 1AH         ; CX:DX now hold number of clock ticks since midnight      

      mov  ax, dx
      xor  dx, dx
      mov  cx, 12   
      div  cx         ; here dx contains the remainder of the division - from 0 to 14
      ;push dx
      ;add  dl, '0'   ; to ascii from '0' to '14'
      ;mov ah, 2h     ; call interrupt to display a value in DL
      ;int 21h    
      RET
  RANDOMIZE ENDP
  ;------------------------------------------------------------
  DISPLAY_HIDDEN:


  MOV DL, SETUP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 
  LEA DX, HIDDEN_CARD
  CALL DISPLAY_STR


  INC TEMP_LOC2

  MOV DL, SETUP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 
  LEA DX, HIDDEN_CARD1
  CALL DISPLAY_STR


  INC TEMP_LOC2

  MOV DL, SETUP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR
  LEA DX, HIDDEN_CARD2
  CALL DISPLAY_STR

  INC TEMP_LOC2

  MOV DL, SETUP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR
  LEA DX, HIDDEN_CARD3
  CALL DISPLAY_STR

  INC TEMP_LOC2

  MOV DL, SETUP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR
  LEA DX, HIDDEN_CARD4
  CALL DISPLAY_STR

  INC TEMP_LOC2

  MOV DL, SETUP_LOC
  MOV DH, TEMP_LOC2

  CALL _SET_CURSOR
  LEA DX, HIDDEN_CARD5
  CALL DISPLAY_STR

  INC TEMP_LOC2


  MOV DL, SETUP_LOC 
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, HIDDEN_CARD6
  CALL DISPLAY_STR

  INC TEMP_LOC2


  MOV DL, SETUP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, HIDDEN_CARD7
  CALL DISPLAY_STR

  INC TEMP_LOC2

  MOV DL, SETUP_LOC 
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, HIDDEN_CARD8
  CALL DISPLAY_STR

  SUB TEMP_LOC2, 8


  JMP givecard_ret

  ;------------------------------------------------------------
  DISPLAY_ACE:
  ADD SCOREHOLDER, 10


  MOV DL, TEMP_LOC 
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 
  LEA DX, H_ACE
  CALL DISPLAY_STR


  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 
  LEA DX, H_ACE1
  CALL DISPLAY_STR


  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR
  LEA DX, H_ACE2
  CALL DISPLAY_STR

  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR
  LEA DX, H_ACE3
  CALL DISPLAY_STR

  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR
  LEA DX, H_ACE4
  CALL DISPLAY_STR

  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2

  CALL _SET_CURSOR
  LEA DX, H_ACE5
  CALL DISPLAY_STR

  INC TEMP_LOC2


  MOV DL, TEMP_LOC 
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, H_ACE6
  CALL DISPLAY_STR

  INC TEMP_LOC2


  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, H_ACE7
  CALL DISPLAY_STR

  INC TEMP_LOC2

  MOV DL, TEMP_LOC 
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, H_ACE8
  CALL DISPLAY_STR

  SUB TEMP_LOC2, 7


  JMP givecard_ret
  ;------------------------------------------------------------
  DISPLAY_2:
  ADD SCOREHOLDER, 2
  
  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, C_TWO
  CALL DISPLAY_STR
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, C_TWO1
  CALL DISPLAY_STR
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, C_TWO2
  CALL DISPLAY_STR
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, C_TWO3
  CALL DISPLAY_STR
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, C_TWO4
  CALL DISPLAY_STR
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, C_TWO5
  CALL DISPLAY_STR
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, C_TWO6
  CALL DISPLAY_STR
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, C_TWO7
  CALL DISPLAY_STR
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, C_TWO8
  CALL DISPLAY_STR

  SUB TEMP_LOC2, 8


  JMP givecard_ret
  ;------------------------------------------------------------
  DISPLAY_3:
  ADD SCOREHOLDER, 3
  
  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, C_THREE
  CALL DISPLAY_STR

  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, C_THREE1
  CALL DISPLAY_STR
  
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, C_THREE2
  CALL DISPLAY_STR
  
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, C_THREE3
  CALL DISPLAY_STR
  
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, C_THREE4
  CALL DISPLAY_STR

  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 
  
  LEA DX, C_THREE5
  CALL DISPLAY_STR

  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, C_THREE6
  CALL DISPLAY_STR

  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 
  

  LEA DX, C_THREE7
  CALL DISPLAY_STR

  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 
  
  LEA DX, C_THREE8
  CALL DISPLAY_STR

  SUB TEMP_LOC2, 8

  JMP givecard_ret
  ;------------------------------------------------------------
  DISPLAY_4:
  ADD SCOREHOLDER, 4

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, C_FOUR
  CALL DISPLAY_STR

  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 
  
  LEA DX, C_FOUR1
  CALL DISPLAY_STR
  
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, C_FOUR2
  CALL DISPLAY_STR

  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, C_FOUR3
  CALL DISPLAY_STR

  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, C_FOUR4
  CALL DISPLAY_STR

  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, C_FOUR5
  CALL DISPLAY_STR

  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, C_FOUR6
  CALL DISPLAY_STR
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, C_FOUR7
  CALL DISPLAY_STR
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, C_FOUR8
  CALL DISPLAY_STR
  
  SUB TEMP_LOC2, 8

  JMP givecard_ret
  ;------------------------------------------------------------
  DISPLAY_5:
  ADD SCOREHOLDER, 5


  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, C_FIVE
  CALL DISPLAY_STR

  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, C_FIVE1
  CALL DISPLAY_STR

  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, C_FIVE2
  CALL DISPLAY_STR

  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, C_FIVE3
  CALL DISPLAY_STR
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, C_FIVE4
  CALL DISPLAY_STR
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, C_FIVE5
  CALL DISPLAY_STR
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, C_FIVE6
  CALL DISPLAY_STR
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, C_FIVE7
  CALL DISPLAY_STR
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, C_FIVE8
  CALL DISPLAY_STR

  SUB TEMP_LOC2, 8

  JMP givecard_ret
  ;------------------------------------------------------------
  GIVE_CARD PROC NEAR
      CALL RANDOMIZE            ; generate a random number

      MOV RAND_NUM, DL          ; save randomly generated number

      ;  MOV   DL, TEMP_LOC
      ;  MOV   DH, TEMP_LOC2

      ADD TEMP_LOC, 3
      ADD TEMP_LOC2, 1
      ;  MOV RAND_NUM, 0

      cmp_ace:
          CMP RAND_NUM, 1       ; ace is drawn
          JE DISPLAY_ACE1
      cmp_1:
        CMP RAND_NUM, 2         ; two is drawn
        JE DISPLAY_TWO
      cmp_2:
        CMP RAND_NUM, 3         ; three is drawn
        JE DISPLAY_THREE
      cmp_3:
        CMP RAND_NUM, 4         ; four is drawn
        JE DISPLAY_FOUR
      cmp_4:
        CMP RAND_NUM, 5         ; five is drawn
        JE DISPLAY_FIVE
      cmp_5:
        CMP RAND_NUM, 6         ; six is drawn
        JE DISPLAY_SIX
      cmp_6:
        CMP RAND_NUM, 7         ; seven is drawn
        JE DISPLAY_SEVEN
      cmp_7:
        CMP RAND_NUM, 8         ; eight is drawn
        JE DISPLAY_EIGHT
      cmp_8:
        CMP RAND_NUM, 9         ; nine is drawn
        JE DISPLAY_NINE
      cmp_9:
        CMP RAND_NUM, 10        ; ten is drawn
        JE DISPLAY_TEN
      cmp_10:
        CMP RAND_NUM, 11        ; jack is drawn
        JE DISPLAy_J
      cmp_11:
        CMP RAND_NUM, 12        ; queen is drawn
        JE DISPLAY_Q
      cmp_12:
        CMP RAND_NUM, 0         ; king is drawn
        JE DISPLAY_K

      givecard_ret:
        RET 

      display_ace1:             ; print ace
        jmp display_ace
      display_two:              ; print two
        jmp display_2
      display_three:            ; print three
        jmp display_3
      display_four:             ; print four
        jmp display_4
      display_five:             ; print five
        jmp display_5
      display_six:              ; print six
        jmp display_6
      display_seven:            ; print seven
        jmp display_7
      display_eight:            ; print eight
        jmp display_8
      display_nine:             ; print nine
        jmp display_9
      display_ten:              ; print ten
        jmp display_10
      display_j:                ; print jack
        jmp display_jack
      display_q:                ; print queen
        jmp display_queen
      display_k:                ; print king
        jmp display_king
  GIVE_CARD ENDP
  ;------------------------------------------------------------
  DISPLAY_6:
  ADD SCOREHOLDER, 6


  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, C_SIX
  CALL DISPLAY_STR

  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, C_SIX1
  CALL DISPLAY_STR

  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, C_SIX2
  CALL DISPLAY_STR

  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, C_SIX3
  CALL DISPLAY_STR

  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, C_SIX4
  CALL DISPLAY_STR

  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, C_SIX5
  CALL DISPLAY_STR

  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, C_SIX6
  CALL DISPLAY_STR

  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, C_SIX7
  CALL DISPLAY_STR

  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, C_SIX8
  CALL DISPLAY_STR

  SUB TEMP_LOC2, 8

  JMP givecard_ret
  ;------------------------------------------------------------
  DISPLAY_7:
  ADD SCOREHOLDER, 7

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, C_SEVEN
  CALL DISPLAY_STR


  INC TEMP_LOC2
  

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, C_SEVEN1
  CALL DISPLAY_STR

  INC TEMP_LOC2

  

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, C_SEVEN2
  CALL DISPLAY_STR

  INC TEMP_LOC2
  

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, C_SEVEN3
  CALL DISPLAY_STR
  INC TEMP_LOC2



  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, C_SEVEN4
  CALL DISPLAY_STR
  INC TEMP_LOC2
  
  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, C_SEVEN5
  CALL DISPLAY_STR
  INC TEMP_LOC2


  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, C_SEVEN6
  CALL DISPLAY_STR
  INC TEMP_LOC2


  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, C_SEVEN7
  CALL DISPLAY_STR
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, C_SEVEN8
  CALL DISPLAY_STR

  SUB TEMP_LOC2, 8


  JMP givecard_ret
  ;------------------------------------------------------------
  DISPLAY_8:
  ADD SCOREHOLDER, 8

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, C_EIGHT
  CALL DISPLAY_STR

  INC TEMP_LOC2


  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, C_EIGHT1
  CALL DISPLAY_STR
  INC TEMP_LOC2

  
  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, C_EIGHT2
  CALL DISPLAY_STR
  INC TEMP_LOC2

  
  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 


  LEA DX, C_EIGHT3
  CALL DISPLAY_STR
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, C_EIGHT4
  CALL DISPLAY_STR
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, C_EIGHT5
  CALL DISPLAY_STR
  INC TEMP_LOC2


  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, C_EIGHT6
  CALL DISPLAY_STR
  INC TEMP_LOC2  

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, C_EIGHT7
  CALL DISPLAY_STR
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, C_EIGHT8
  CALL DISPLAY_STR

  SUB TEMP_LOC2, 8

  JMP givecard_ret
  ;------------------------------------------------------------
  DISPLAY_9:
  ADD SCOREHOLDER, 9


  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, C_NINE
  CALL DISPLAY_STR
  INC TEMP_LOC2


  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR  
  LEA DX, C_NINE1
  CALL DISPLAY_STR
  
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 
  LEA DX, C_NINE2
  CALL DISPLAY_STR
  
  INC TEMP_LOC2
  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 
  LEA DX, C_NINE3
  CALL DISPLAY_STR
  
  INC TEMP_LOC2
  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 
  LEA DX, C_NINE4
  CALL DISPLAY_STR
  
  INC TEMP_LOC2
  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 
  LEA DX, C_NINE5
  CALL DISPLAY_STR
  
  INC TEMP_LOC2
  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, C_NINE6
  CALL DISPLAY_STR
  
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 
  LEA DX, C_NINE7
  CALL DISPLAY_STR
  
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 
  LEA DX, C_NINE8
  CALL DISPLAY_STR

  SUB TEMP_LOC2, 8


  JMP givecard_ret
  ;------------------------------------------------------------
  DISPLAY_10:
  ADD SCOREHOLDER, 10



  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, C_TEN
  CALL DISPLAY_STR
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, C_TEN1
  CALL DISPLAY_STR
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, C_TEN2
  CALL DISPLAY_STR
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, C_TEN3
  CALL DISPLAY_STR
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, C_TEN4
  CALL DISPLAY_STR
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, C_TEN5
  CALL DISPLAY_STR
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, C_TEN6
  CALL DISPLAY_STR
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, C_TEN7
  CALL DISPLAY_STR
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, C_TEN8
  CALL DISPLAY_STR

  SUB TEMP_LOC2, 8

  JMP givecard_ret
  ;------------------------------------------------------------
  DISPLAY_JACK:
  ADD SCOREHOLDER, 10

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR
  
  LEA DX, C_JACK
  CALL DISPLAY_STR
  INC TEMP_LOC2
  

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR
  
  LEA DX, C_JACK1
  CALL DISPLAY_STR
  INC TEMP_LOC2
  

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR
  
  LEA DX, C_JACK2
  CALL DISPLAY_STR
  INC TEMP_LOC2


  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, C_JACK3
  CALL DISPLAY_STR
  INC TEMP_LOC2
  
  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, C_JACK4
  CALL DISPLAY_STR
  INC TEMP_LOC2


  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, C_JACK5
  CALL DISPLAY_STR
  INC TEMP_LOC2
  
  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, C_JACK6
  CALL DISPLAY_STR
  INC TEMP_LOC2
  
  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, C_JACK7
  CALL DISPLAY_STR
  INC TEMP_LOC2
  
  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, C_JACK8
  CALL DISPLAY_STR

  SUB TEMP_LOC2, 8


  JMP givecard_ret
  ;------------------------------------------------------------
  DISPLAY_QUEEN:
  ADD SCOREHOLDER, 10


  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, C_QUEEN
  CALL DISPLAY_STR

  INC TEMP_LOC2



  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR


  LEA DX, C_QUEEN1
  CALL DISPLAY_STR

  INC TEMP_LOC2



  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, C_QUEEN2
  CALL DISPLAY_STR

  INC TEMP_LOC2


  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, C_QUEEN3
  CALL DISPLAY_STR

  INC TEMP_LOC2


  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, C_QUEEN4
  CALL DISPLAY_STR

  INC TEMP_LOC2


  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, C_QUEEN5
  CALL DISPLAY_STR

  INC TEMP_LOC2



  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, C_QUEEN6
  CALL DISPLAY_STR

  INC TEMP_LOC2



  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, C_QUEEN7
  CALL DISPLAY_STR

  INC TEMP_LOC2


  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, C_QUEEN8
  CALL DISPLAY_STR

  SUB TEMP_LOC2, 8




  JMP givecard_ret
  ;------------------------------------------------------------
  DISPLAY_KING:
  ADD SCOREHOLDER, 10


  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, C_KING
  CALL DISPLAY_STR
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, C_KING1
  CALL DISPLAY_STR
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, C_KING2
  CALL DISPLAY_STR
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, C_KING3
  CALL DISPLAY_STR
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, C_KING4
  CALL DISPLAY_STR
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, C_KING5
  CALL DISPLAY_STR
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, C_KING6
  CALL DISPLAY_STR
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, C_KING7
  CALL DISPLAY_STR
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, C_KING8
  CALL DISPLAY_STR
  
  SUB TEMP_LOC2, 8


  JMP givecard_ret
  ;------------------------------------------------------------
  DISPLAY_STR PROC NEAR
  MOV AH, 09H               ; used to shorten code by 1 line per print 
  INT 21H
  RET
  DISPLAY_STR ENDP
  ;------------------------------------------------------------
  ACCEPT_STR1 PROC  NEAR
  ;string
  ;MOV AH, 3FH
  ;MOV BX, 00
  ;MOV CX, MAXLEN
  ;LEA DX, KBINPUT1
  ;INT 21H

  ;char input
      MOV AH, 10H           ; read input of player
      INT 16H
      MOV KBINPUT1, AL      ; display input in real time
      RET
  ACCEPT_STR1 ENDP
  ;------------------------------------------------------------
  _TERMINATE PROC NEAR
      MOV   AX, 0600H                   ; clear screen
      MOV   BH, 02H                     ; green foreground with black background 
      MOV   CX, 0000H                   ; index (0, 0)
      MOV   DX, 184FH                   ; to index (24, 79)  
      INT   10H
      
      MOV   DL, 20                      ; set cursor so that the message would be at the center
      MOV   DH, 12                 
      CALL  _SET_CURSOR  

      LEA DX, TERMINATE_STR             ; display game over screen is selected
      MOV AH, 09
      INT 21H

      MOV   DL, 0                       ; set the cursor to the bottom of the screen
      MOV   DH, 24                
      CALL  _SET_CURSOR  

      MOV   AX, 4C00H                   ; terminate program
      INT   21H
  _TERMINATE ENDP
  ;-------------------------------------------
  MAIN ENDP
  END MAIN