; - randomize by 1/52 cards. Once chosen, skip if chosen again
; enemy is ai ???	
; todo - cards are printed side by side
;create a program that will lose if the card reaches 21
; ui 

TITLE STRING PALINDROME (SIMPLFIED .EXE FORMAT)
.MODEL SMALL
;---------------------------------------------
.STACK 64
;---------------------------------------------
.DATA

NEW_INPUT DB ?                              ; listener for key press
STATE DB ?                                  ; tracking of which display state

;------------- D I S P L A Y S  V A R I A B L E S--------------------- 
  START1_PATH  DB 'menu1.txt', 00H          ; play is selected state
  FILEHANDLE    DW ?
  START_1    DB 2001 DUP('$')

  START2_PATH  DB 'hmenu1.txt', 00H         ; how to play selected state
  START_2    DB 2001 DUP('$') 

  START3_PATH  DB 'xmenu1.txt', 00H         ; exit selected state
  START_3    DB 2001 DUP('$') 

  HOW_PATH  DB 'how.txt', 00H               ; how to play screen
  HOW    DB 2001 DUP('$')  

;-------------- O T H E R  V A R I A B L E S----------------
  PRINT    DB    10, 13, 'Hit or Stand? (h/s) $'
  PRINT_WIN DB 10, 13, 'You win!$'
  PRINT_LOSE DB 10, 13, 'You lost.$'
  PRINT_DRAW DB 10, 13, 'Draw!$'
  
  KBINPUT1  DB ?, '$'

  TERMINATE_STR DB ' T H A N K  Y O U  F O R  P L A Y I N G ! ! !  $'
  EXIT_STR DB 10, 13, 10, 13, 'PRESS ESC TO EXIT ', 10, 13, '$'

  MAXLEN DW 30
  MONEY_INIT DW 90
  CURR_CARDVAL DB 0, '$'
  ENEMY_CARDVAL DB 0, '$'
  SCOREHOLDER DB 0

  TEMP_LOC DB 0
  TEMP_LOC2 DB 0
  CARDVAL_MSG DB "You're current card value is: $"
  RAND_NUM DB 0000

  MESSAGE DB " _________           _________           _________           _________ ", 10, 13
          DB "|A        |         |A        |         |A        |         |A        |", 10, 13
          DB "|+   *    |         |O  /~\   |         |# _   _  |         |@   *    |", 10, 13
          DB "|    !    |         |  / ^ \  |         | / ~V~ \ |         |   / \   |", 10, 13
          DB "|  *-+-*  |         | (     ) |         | \ Bej / |         |  /_@_\  |", 10, 13
          DB "|    |    |         |  \ v /  |         |  \ # /  |         |    !    |", 10, 13
          DB "|   ~~~  +|         |   \_/  O|         |   `.'  #|         |   ~ ~  @|", 10, 13
          DB "|        V|         |        V|         |        V|         |        V|", 10, 13
          DB " ~~~~~~~~~           ~~~~~~~~~           ~~~~~~~~~           ~~~~~~~~~ ", 10, 13, '$'

  MESSAGE2 DB " _ _ _ _ ___ ___ _ _ _ ___ _ _ _________ ", 10, 13
           DB "|A|Q|1|5|4  |7  |J|1|9|7  |A|K|2        |", 10, 13
           DB "|@|@|@|@|@  |## |O|O|O|OO |+|+|+        |", 10, 13
           DB "| | | | | @ |   | | | |   | | |    +    |", 10, 13
           DB "| | | | |   | # | | | | O | | |         |", 10, 13
           DB "| | | | | @ |   | | | |   | | |    +    |", 10, 13
           DB "| | | | |   | # | | | | O | | |        +|", 10, 13
           DB "| | | | |   |   | | | |   | | |        Z|", 10, 13
           DB " ~ ~ ~ ~ ~~~ ~~~ ~ ~ ~ ~~~ ~ ~ ~~~~~~~~~", 10, 13, '$'

  H_ACE DB " _________ ", 10, 13
        DB "|A        |", 10, 13
        DB "|# _   _  |", 10, 13
        DB "| / ~V~ \ |", 10, 13
        DB "| \ Bej / |", 10, 13
        DB "|  \ # /  |", 10, 13
        DB "|   `.'  #|", 10, 13
        DB "|        V|", 10, 13
        DB " ~~~~~~~~~ ", 10, 13, '$'


  C_TWO  DB " _________ ", 10, 13 
         DB "|2        |", 10, 13
         DB "|+        |", 10, 13
         DB "|    +    |", 10, 13
         DB "|         |", 10, 13
         DB "|    +    |", 10, 13
         DB "|        +|", 10, 13
         DB "|        Z|", 10, 13
         DB " ~~~~~~~~~ ", 10, 13, '$'


  C_THREE  DB " _________ ", 10, 13 
           DB "|3        |", 10, 13
           DB "|+   +    |", 10, 13
           DB "|         |", 10, 13
           DB "|    +    |", 10, 13
           DB "|         |", 10, 13
           DB "|    +   +|", 10, 13
           DB "|        E|", 10, 13
           DB " ~~~~~~~~~ ", 10, 13, '$'


  C_FOUR  DB " _________ ", 10, 13 
          DB "|4        |", 10, 13
          DB "|+        |", 10, 13
          DB "|  +   +  |", 10, 13
          DB "|         |", 10, 13
          DB "|  +   +  |", 10, 13
          DB "|        +|", 10, 13
          DB "|        4|", 10, 13
          DB " ~~~~~~~~~ ", 10, 13, '$'


  C_FIVE  DB " _________ ", 10, 13 
          DB "|5        |", 10, 13
          DB "|+        |", 10, 13
          DB "|  +   +  |", 10, 13
          DB "|    +    |", 10, 13
          DB "|  +   +  |", 10, 13
          DB "|        +|", 10, 13
          DB "|        S|", 10, 13
          DB " ~~~~~~~~~ ", 10, 13, '$'


  C_SIX  DB " _________ ", 10, 13 
         DB "|6        |", 10, 13
         DB "|+ +   +  |", 10, 13
         DB "|         |", 10, 13
         DB "|  +   +  |", 10, 13
         DB "|         |", 10, 13
         DB "|  +   + +|", 10, 13
         DB "|        9|", 10, 13
         DB " ~~~~~~~~~ ", 10, 13, '$'

  C_SEVEN  DB " _________ ", 10, 13 
           DB "|7        |", 10, 13
           DB "|+ +   +  |", 10, 13
           DB "|    +    |", 10, 13
           DB "|  +   +  |", 10, 13
           DB "|         |", 10, 13
           DB "|  +   + +|", 10, 13
           DB "|        L|", 10, 13
           DB " ~~~~~~~~~ ", 10, 13, '$'

  C_EIGHT  DB " _________ ", 10, 13 
           DB "|8 +   +  |", 10, 13
           DB "|+        |", 10, 13
           DB "|  +   +  |", 10, 13
           DB "|         |", 10, 13
           DB "|  +   +  |", 10, 13
           DB "|        +|", 10, 13
           DB "|  +   + 8|", 10, 13
           DB " ~~~~~~~~~ ", 10, 13, '$'

  C_NINE   DB " _________ ", 10, 13 
           DB "|9 +   +  |", 10, 13
           DB "|+        |", 10, 13
           DB "|  +   +  |", 10, 13
           DB "|    +    |", 10, 13
           DB "|  +   +  |", 10, 13
           DB "|        +|", 10, 13
           DB "|  +   + 6|", 10, 13
           DB " ~~~~~~~~~ ", 10, 13, '$'


  C_TEN   DB " _________ ", 10, 13 
           DB "|10+   +  |", 10, 13
           DB "|+   +    |", 10, 13
           DB "|  +   +  |", 10, 13
           DB "|         |", 10, 13
           DB "|  +   +  |", 10, 13
           DB "|    +   +|", 10, 13
           DB "|  +   +01|", 10, 13
           DB " ~~~~~~~~~ ", 10, 13, '$'


  C_JACK   DB " _________ ", 10, 13 
           DB "|J /~~|_  |", 10, 13
           DB "|+ | o`,  |", 10, 13
           DB "|  | -|   |", 10, 13
           DB "| =~)+(_= |", 10, 13
           DB "|   |- |  |", 10, 13
           DB "|  `.o | +|", 10, 13
           DB "|  ~|__/ J|", 10, 13
           DB " ~~~~~~~~~ ", 10, 13, '$'


  C_QUEEN  DB " _________ ", 10, 13 
           DB "|Q |~~~|  |", 10, 13
           DB "|+ /o,o\  |", 10, 13
           DB "|  \_-_/  |", 10, 13
           DB "| _-~+_-~ |", 10, 13
           DB "|  /~-~\  |", 10, 13
           DB "|  \o`o/ +|", 10, 13
           DB "|  |___| Q|", 10, 13
           DB " ~~~~~~~~~ ", 10, 13, '$'


  C_KING   DB " _________ ", 10, 13 
           DB "|K |/|\|  |", 10, 13
           DB "|+ /o,o\  |", 10, 13
           DB "|  \_-_/  |", 10, 13
           DB "| ~-_-~-_ |", 10, 13
           DB "|  /~-~\  |", 10, 13
           DB "|  \o`o/ +|", 10, 13
           DB "|  |\|/| X|", 10, 13
           DB " ~~~~~~~~~ ", 10, 13, '$'
 
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
  MOV AH, 3EH                 ;request close file
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
  MOV AH, 3EH                 ;request close file
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
  MOV AH, 3EH                 ;request close file
  MOV BX, FILEHANDLE    
  INT 21H

  MOV AH, 3DH    
  MOV AL, 00                  
  LEA DX, HOW_PATH         ; open how to play display
  INT 21H
  MOV FILEHANDLE, AX
  MOV AH, 3FH          
  MOV BX, FILEHANDLE    
  MOV CX, 2000           
  LEA DX, HOW             ; save file contents to a variable
  INT 21H
  MOV AH, 3EH                 ;request close file
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

GAME: 
  CALL PLAYER_MOVE            ; player's turn

  MOV SCOREHOLDER, 0          ; reset player's points

  ADD CURR_CARDVAL, '0'       ; convert to string value of int

  LEA DX, CURR_CARDVAL        ; display current player points
  CALL DISPLAY_STR

  CALL ENEMY_MOVE             ; dealer's turn

  MOV SCOREHOLDER, 0          ; reset dealer's points

  ADD ENEMY_CARDVAL, '0'      ; convert to string value of int

  LEA DX, ENEMY_CARDVAL       ; display current dealer points
  CALL DISPLAY_STR

  MOV AL, CURR_CARDVAL        ; moving player points to AL
  CMP AL, ENEMY_CARDVAL       ; compare if player's points are higher
  JG WIN
  JL LOSE
  JE DRAW

FIN:
  CALL _TERMINATE                 ; early terminate from game screen


FINISH:
  LEA DX, EXIT_STR                ; display how to exit the game
  CALL DISPLAY_STR
B10:
  MOV NEW_INPUT, '$'              ; clear input holder
  CALL _GET_KEY                   ; listen for inputs

  CMP NEW_INPUT, 1B               ; esc key press
  JNE B10                         ; loop in listening for esc key press
  CALL _TERMINATE

  DRAW:                         
    LEA DX, PRINT_DRAW            ; Draw result display
    CALL DISPLAY_STR
    JMP FINISH
  WIN:
    LEA DX, PRINT_WIN             ; Player wins display
    CALL DISPLAY_STR
    JMP FINISH
  LOSE:
    LEA DX, PRINT_LOSE            ; Dealer wins display
    CALL DISPLAY_STR
    JMP FINISH
;------------------------------------------------------------
_SET_CURSOR PROC  NEAR
      MOV   AH, 02H           
      MOV   BH, 00
      INT   10H
      
      RET
_SET_CURSOR ENDP
;-------------------------------------------
_GET_KEY  PROC  NEAR
      MOV   AH, 01H               ; check for input
      INT   16H
      JZ    __LEAVETHIS           ; no input returns to the caller 
      MOV   AH, 00H   
      INT   16H
      MOV   NEW_INPUT, AH         ; set the value of the input
  __LEAVETHIS:
      RET
_GET_KEY  ENDP
;------------------------------------------------------------
_CLEAR_SCREEN PROC NEAR
      MOV   AX, 0600H             
      MOV   BH, 07H               ; default dosbox colors
      MOV   CX, 0000H             ; from index (0,0)
      MOV   DX, 184FH             ; to index (24, 79)
      INT   10H
      RET
_CLEAR_SCREEN ENDP
;------------------------------------------------------------
ENEMY_MOVE PROC NEAR

  
  MOV     CX, 0FH                   ; hit until enemy reaches 17 
  MOV     DX, 4240H                 ; or until dealers value overpasses the player's
  MOV     AH, 86H                   ; but must not overpass 21    
  INT     15H
  
  E_HIT:
    CALL GIVE_CARD                  ; call give card

    CMP SCOREHOLDER, 21             ; check if over 21
    JG WIN

    CMP SCOREHOLDER, 17             ; check if over 17
    JG __ret                        ; if so save the value
    JMP ENEMY_MOVE                  ; else hit again


__ret:                            
  MOV BL, SCOREHOLDER               ; take the current score and save to BL      
  MOV ENEMY_CARDVAL, BL             ; save the score value to the dealers points
  RET
ENEMY_MOVE ENDP
;------------------------------------------------------------
PLAYER_MOVE PROC NEAR

  LEA DX, PRINT                     ; hit or stand choice
  CALL DISPLAY_STR

  CALL ACCEPT_STR1                  ; take the selected choice
 
  MOV BH, 'h'                       ; set bh to 'q'
  MOV BL, 's'                       ; set bl to 's'

  CMP KBINPUT1, BH                  ; check if hit
  JE HIT
  CMP KBINPUT1, BL                  ; check if stand
  JE STAND

  
  HIT:
    CALL GIVE_CARD                  ; call give card
    CMP SCOREHOLDER, 21             ; check if over 21
    JG LOSE
    JMP PLAYER_MOVE                 ; else, player's move again  

  
  
  STAND:                            ; if stand return value
    JMP _RET

_ret:
  MOV BL, SCOREHOLDER               ; take the current score and save to BL
  MOV CURR_CARDVAL, BL              ; save the score value to the dealers points
  RET
PLAYER_MOVE ENDP
;------------------------------------------------------------
RANDOMIZE PROC NEAR

RANDSTART:
   MOV AH, 00h    ; interrupts to get system time        
   INT 1AH        ; CX:DX now hold number of clock ticks since midnight      


   mov  ax, dx
   xor  dx, dx
   mov  cx, 12   
   div  cx        ; here dx contains the remainder of the division - from 0 to 14
   ;push dx
   ;add  dl, '0'  ; to ascii from '0' to '14'
   ;mov ah, 2h    ; call interrupt to display a value in DL
   ;int 21h    
RET
RANDOMIZE ENDP
;------------------------------------------------------------
DISPLAY_ACE PROC NEAR
  ADD SCOREHOLDER, 10       ; store the card value
  LEA DX, H_ACE
  CALL DISPLAY_STR          ; display the card
  RET
DISPLAY_ACE ENDP
;------------------------------------------------------------
DISPLAY_2 PROC NEAR
  ADD SCOREHOLDER, 2        ; store the card value
  LEA DX, C_TWO
  CALL DISPLAY_STR          ; display the card
  RET
DISPLAY_2 ENDP
;------------------------------------------------------------
DISPLAY_3 PROC NEAR
  ADD SCOREHOLDER, 3        ; store the card value
  LEA DX, C_THREE
  CALL DISPLAY_STR          ; display the card
  RET
DISPLAY_3 ENDP
;------------------------------------------------------------
DISPLAY_4 PROC NEAR
  ADD SCOREHOLDER, 4        ; store the card value
  LEA DX, C_FOUR
  CALL DISPLAY_STR          ; display the card
  RET
DISPLAY_4 ENDP
;------------------------------------------------------------
DISPLAY_5 PROC NEAR
  ADD SCOREHOLDER, 5        ; store the card value
  LEA DX, C_FIVE
  CALL DISPLAY_STR          ; display the card
  RET
DISPLAY_5 ENDP
;------------------------------------------------------------
 GIVE_CARD PROC NEAR
 
 CALL RANDOMIZE               ; generate a random number

 MOV RAND_NUM, DL             ; save randomly generated number
  
  ;MOV   DL, TEMP_LOC       
  ;MOV   DH, TEMP_LOC2

  CMP RAND_NUM, 0             ; ace is drawn
  JE DISPLAY_ACE

  CMP RAND_NUM, 1             ; two is drawn
  JE DISPLAY_2
 
  CMP RAND_NUM, 2             ; three is drawn 
  JE DISPLAY_3
 
  CMP RAND_NUM, 3             ; four is drawn
  JE DISPLAY_4
 
  CMP RAND_NUM, 4             ; five is drawn
  JE DISPLAY_5
 
  CMP RAND_NUM, 5             ; six is drawn
  JE DISPLAY_6
 
  CMP RAND_NUM, 6             ; seven is drawn
  JE DISPLAY_7
 
  CMP RAND_NUM, 7             ; eight is drawn
  JE DISPLAY_8
 
  CMP RAND_NUM, 8             ; nine is drawn
  JE DISPLAY_9
 
  CMP RAND_NUM, 9             ; ten is drawn
  JE DISPLAY_10
 
  CMP RAND_NUM, 10            ; jack is drawn
  JE DISPLAy_JACK
 
  CMP RAND_NUM, 11            ; queen is drawn
  JE DISPLAY_QUEEN
 
  CMP RAND_NUM, 12            ; king is drawn
  JE DISPLAY_KING

  RET 
 GIVE_CARD ENDP
;------------------------------------------------------------
DISPLAY_6 PROC NEAR
  ADD SCOREHOLDER, 6        ; store the card value
  LEA DX, C_SIX
  CALL DISPLAY_STR          ; display the card
  RET
DISPLAY_6 ENDP
;------------------------------------------------------------
DISPLAY_7 PROC NEAR
  ADD SCOREHOLDER, 7        ; store the card value
  LEA DX, C_SEVEN
  CALL DISPLAY_STR          ; display the card
  RET
DISPLAY_7 ENDP
;------------------------------------------------------------
DISPLAY_8 PROC NEAR
  ADD SCOREHOLDER, 8        ; store the card value
  LEA DX, C_EIGHT
  CALL DISPLAY_STR          ; display the card
  RET
DISPLAY_8 ENDP
;------------------------------------------------------------
DISPLAY_9 PROC NEAR
  ADD SCOREHOLDER, 9        ; store the card value
  LEA DX, C_NINE
  CALL DISPLAY_STR          ; display the card
  RET
DISPLAY_9 ENDP
;------------------------------------------------------------
DISPLAY_10 PROC NEAR
  ADD SCOREHOLDER, 10       ; store the card value
  LEA DX, C_TEN
  CALL DISPLAY_STR          ; display the card
  RET
DISPLAY_10 ENDP
;------------------------------------------------------------
DISPLAY_JACK PROC NEAR
  ADD SCOREHOLDER, 10       ; store the card value
  LEA DX, C_JACK
  CALL DISPLAY_STR          ; display the card
  RET
DISPLAY_JACK ENDP
;------------------------------------------------------------
DISPLAY_QUEEN PROC NEAR
  ADD SCOREHOLDER, 10       ; store the card value
  LEA DX, C_QUEEN
  CALL DISPLAY_STR          ; display the card
  RET
DISPLAY_QUEEN ENDP
;------------------------------------------------------------
DISPLAY_KING PROC NEAR
  ADD SCOREHOLDER, 10       ; store the card value
  LEA DX, C_KING
  CALL DISPLAY_STR          ; display the card
  RET
DISPLAY_KING ENDP
;------------------------------------------------------------

DISPLAY_STR PROC NEAR
  MOV AH, 09H               ; used to shorten code by 1 line per print method
  INT 21H
  RET
DISPLAY_STR ENDP

;------------------------------------------------------------

ACCEPT_STR1 PROC  NEAR
  MOV AH, 3FH                           ; read input of player
  MOV BX, 00
  MOV CX, MAXLEN                        ; max length of 30
  LEA DX, KBINPUT1                      ; display input in real time
  INT 21H
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
