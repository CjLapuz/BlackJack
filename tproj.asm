TITLE BLACJACK (SIMPLFIED .EXE FORMAT)
  .MODEL SMALL
  .386P
  ;---------------------------------------------
  .STACK 64
  ;---------------------------------------------
  .DATA
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

    C_ACE   DB  " _________ ", 10, 13, '$'
    C_ACE1   DB  "|A        |", 10, 13, '$'
    C_ACE2   DB  "|+   *    |", 10, 13, '$'
    C_ACE3   DB  "|    !    |", 10, 13, '$'
    C_ACE4   DB  "|  *-+-*  |", 10, 13, '$'
    C_ACE5   DB  "|    |    |", 10, 13, '$'
    C_ACE6   DB  "|   ~~~  +|", 10, 13, '$'
    C_ACE7   DB  "|        V|", 10, 13, '$'
    C_ACE8   DB  " ~~~~~~~~~ ", 10, 13, '$'


    D_ACE    DB  " _________ ", 10, 13, '$'
    D_ACE1   DB  "|A        |", 10, 13, '$'
    D_ACE2   DB  "|O  /~\   |", 10, 13, '$'
    D_ACE3   DB  "|  / ^ \  |", 10, 13, '$'
    D_ACE4   DB  "| (     ) |", 10, 13, '$'
    D_ACE5   DB  "|  \ v /  |", 10, 13, '$'
    D_ACE6   DB  "|   \_/  O|", 10, 13, '$'
    D_ACE7   DB  "|        V|", 10, 13, '$'
    D_ACE8   DB  " ~~~~~~~~~ ", 10, 13, '$'


    S_ACE    DB  " _________ ", 10, 13, '$'
    S_ACE1   DB  "|A        |", 10, 13, '$'
    S_ACE2   DB  "|@   *    |", 10, 13, '$'
    S_ACE3   DB  "|   / \   |", 10, 13, '$'
    S_ACE4   DB  "|  /_@_\  |", 10, 13, '$'
    S_ACE5   DB  "|    !    |", 10, 13, '$'
    S_ACE6   DB  "|   ~ ~  @|", 10, 13, '$'
    S_ACE7   DB  "|        V|", 10, 13, '$'
    S_ACE8   DB  " ~~~~~~~~~ ", 10, 13, '$'
    

    D_TWO   DB " _________ ", 10, 13, '$'
    D_TWO1  DB "|2        |", 10, 13, '$'
    D_TWO2  DB "|O        |", 10, 13, '$'
    D_TWO3  DB "|    O    |", 10, 13, '$'
    D_TWO4  DB "|         |", 10, 13, '$'
    D_TWO5  DB "|    O    |", 10, 13, '$'
    D_TWO6  DB "|        O|", 10, 13, '$'
    D_TWO7  DB "|        Z|", 10, 13, '$'
    D_TWO8  DB " ~~~~~~~~~ ", 10, 13, '$'


    D_THREE   DB " _________ ", 10, 13, '$'
    D_THREE1  DB "|3        |", 10, 13, '$'
    D_THREE2  DB "|O   O    |", 10, 13, '$'
    D_THREE3  DB "|         |", 10, 13, '$'
    D_THREE4  DB "|    O    |", 10, 13, '$'
    D_THREE5  DB "|         |", 10, 13, '$'
    D_THREE6  DB "|    O   O|", 10, 13, '$'
    D_THREE7  DB "|        E|", 10, 13, '$'
    D_THREE8  DB " ~~~~~~~~~ ", 10, 13, '$'


    D_FOUR   DB " _________ ", 10, 13, '$'
    D_FOUR1  DB "|4        |", 10, 13, '$'
    D_FOUR2  DB "|O        |", 10, 13, '$'
    D_FOUR3  DB "|  O   O  |", 10, 13, '$'
    D_FOUR4  DB "|         |", 10, 13, '$'
    D_FOUR5  DB "|  O   O  |", 10, 13, '$'
    D_FOUR6  DB "|        O|", 10, 13, '$'
    D_FOUR7  DB "|        4|", 10, 13, '$'
    D_FOUR8  DB " ~~~~~~~~~ ", 10, 13, '$'


    D_FIVE   DB " _________ ", 10, 13, '$'
    D_FIVE1  DB "|5        |", 10, 13, '$'
    D_FIVE2  DB "|O        |", 10, 13, '$'
    D_FIVE3  DB "|  O   O  |", 10, 13, '$'
    D_FIVE4  DB "|    O    |", 10, 13, '$'
    D_FIVE5  DB "|  O   O  |", 10, 13, '$'
    D_FIVE6  DB "|        O|", 10, 13, '$'
    D_FIVE7  DB "|        S|", 10, 13, '$'
    D_FIVE8  DB " ~~~~~~~~~ ", 10, 13, '$'


    D_SIX   DB " _________ ", 10, 13, '$' 
    D_SIX1  DB "|6        |", 10, 13, '$'
    D_SIX2  DB "|O O   O  |", 10, 13, '$'
    D_SIX3  DB "|         |", 10, 13, '$'
    D_SIX4  DB "|  O   O  |", 10, 13, '$'
    D_SIX5  DB "|         |", 10, 13, '$'
    D_SIX6  DB "|  O   O O|", 10, 13, '$'
    D_SIX7  DB "|        9|", 10, 13, '$'
    D_SIX8  DB " ~~~~~~~~~ ", 10, 13, '$'

    D_SEVEN   DB " _________ ", 10, 13, '$'
    D_SEVEN1  DB "|7        |", 10, 13, '$'
    D_SEVEN2  DB "|O O   O  |", 10, 13, '$'
    D_SEVEN3  DB "|    O    |", 10, 13, '$'
    D_SEVEN4  DB "|  O   O  |", 10, 13, '$'
    D_SEVEN5  DB "|         |", 10, 13, '$'
    D_SEVEN6  DB "|  O   O O|", 10, 13, '$'
    D_SEVEN7  DB "|        L|", 10, 13, '$'
    D_SEVEN8  DB " ~~~~~~~~~ ", 10, 13, '$'

    D_EIGHT   DB " _________ ", 10, 13, '$' 
    D_EIGHT1  DB "|8 O   O  |", 10, 13, '$'
    D_EIGHT2  DB "|O        |", 10, 13, '$'
    D_EIGHT3  DB "|  O   O  |", 10, 13, '$'
    D_EIGHT4  DB "|         |", 10, 13, '$'
    D_EIGHT5  DB "|  O   O  |", 10, 13, '$'
    D_EIGHT6  DB "|        O|", 10, 13, '$'
    D_EIGHT7  DB "|  O   O 8|", 10, 13, '$'
    D_EIGHT8  DB " ~~~~~~~~~ ", 10, 13, '$'

    D_NINE    DB " _________ ", 10, 13 , '$'
    D_NINE1   DB "|9 O   O  |", 10, 13, '$'
    D_NINE2   DB "|O        |", 10, 13, '$'
    D_NINE3   DB "|  O   O  |", 10, 13, '$'
    D_NINE4   DB "|    O    |", 10, 13, '$'
    D_NINE5   DB "|  O   O  |", 10, 13, '$'
    D_NINE6   DB "|        O|", 10, 13, '$'
    D_NINE7   DB "|  O   O 6|", 10, 13, '$'
    D_NINE8   DB " ~~~~~~~~~ ", 10, 13, '$'


    D_TEN    DB " _________ ", 10, 13 , '$'
    D_TEN1   DB "|10O   O  |", 10, 13, '$'
    D_TEN2   DB "|O   O    |", 10, 13, '$'
    D_TEN3   DB "|  O   O  |", 10, 13, '$'
    D_TEN4   DB "|         |", 10, 13, '$'
    D_TEN5   DB "|  O   O  |", 10, 13, '$'
    D_TEN6   DB "|    O   O|", 10, 13, '$'
    D_TEN7   DB "|  O   O01|", 10, 13, '$'
    D_TEN8   DB " ~~~~~~~~~ ", 10, 13, '$'


    D_JACK    DB " _________ ", 10, 13, '$' 
    D_JACK1   DB "|J /~~|_  |", 10, 13, '$'
    D_JACK2   DB "|O | o`,  |", 10, 13, '$'
    D_JACK3   DB "|  | -|   |", 10, 13, '$'
    D_JACK4   DB "| =~)O(_= |", 10, 13, '$'
    D_JACK5   DB "|   |- |  |", 10, 13, '$'
    D_JACK6   DB "|  `.o | O|", 10, 13, '$'
    D_JACK7   DB "|  ~|__/ J|", 10, 13, '$'
    D_JACK8   DB " ~~~~~~~~~ ", 10, 13, '$'


    D_QUEEN  DB " _________ ", 10, 13, '$' 
    D_QUEEN1 DB "|Q |~~~|  |", 10, 13, '$'
    D_QUEEN2 DB "|O /o,o\  |", 10, 13, '$'
    D_QUEEN3 DB "|  \_-_/  |", 10, 13, '$'
    D_QUEEN4 DB "| _-~O_-~ |", 10, 13, '$'
    D_QUEEN5 DB "|  /~-~\  |", 10, 13, '$'
    D_QUEEN6 DB "|  \o`o/ O|", 10, 13, '$'
    D_QUEEN7 DB "|  |___| Q|", 10, 13, '$'
    D_QUEEN8 DB " ~~~~~~~~~ ", 10, 13, '$'


    D_KING   DB " _________ ", 10, 13 , '$'
    D_KING1  DB "|K |/|\|  |", 10, 13, '$'
    D_KING2  DB "|O /o,o\  |", 10, 13, '$'
    D_KING3  DB "|  \_-_/  |", 10, 13, '$'
    D_KING4  DB "| ~-_-~-_ |", 10, 13, '$'
    D_KING5  DB "|  /~-~\  |", 10, 13, '$'
    D_KING6  DB "|  \o`o/ O|", 10, 13, '$'
    D_KING7  DB "|  |\|/| X|", 10, 13, '$'
    D_KING8  DB " ~~~~~~~~~ ", 10, 13, '$'

        S_TWO   DB " _________ ", 10, 13, '$'
    S_TWO1  DB "|2        |", 10, 13, '$'
    S_TWO2  DB "|@        |", 10, 13, '$'
    S_TWO3  DB "|    @    |", 10, 13, '$'
    S_TWO4  DB "|         |", 10, 13, '$'
    S_TWO5  DB "|    @    |", 10, 13, '$'
    S_TWO6  DB "|        @|", 10, 13, '$'
    S_TWO7  DB "|        Z|", 10, 13, '$'
    S_TWO8  DB " ~~~~~~~~~ ", 10, 13, '$'


    S_THREE   DB " _________ ", 10, 13, '$'
    S_THREE1  DB "|3        |", 10, 13, '$'
    S_THREE2  DB "|@   @    |", 10, 13, '$'
    S_THREE3  DB "|         |", 10, 13, '$'
    S_THREE4  DB "|    @    |", 10, 13, '$'
    S_THREE5  DB "|         |", 10, 13, '$'
    S_THREE6  DB "|    @   @|", 10, 13, '$'
    S_THREE7  DB "|        E|", 10, 13, '$'
    S_THREE8  DB " ~~~~~~~~~ ", 10, 13, '$'


    S_FOUR   DB " _________ ", 10, 13, '$'
    S_FOUR1  DB "|4        |", 10, 13, '$'
    S_FOUR2  DB "|@        |", 10, 13, '$'
    S_FOUR3  DB "|  @   @  |", 10, 13, '$'
    S_FOUR4  DB "|         |", 10, 13, '$'
    S_FOUR5  DB "|  @   @  |", 10, 13, '$'
    S_FOUR6  DB "|        @|", 10, 13, '$'
    S_FOUR7  DB "|        4|", 10, 13, '$'
    S_FOUR8  DB " ~~~~~~~~~ ", 10, 13, '$'


    S_FIVE   DB " _________ ", 10, 13, '$'
    S_FIVE1  DB "|5        |", 10, 13, '$'
    S_FIVE2  DB "|@        |", 10, 13, '$'
    S_FIVE3  DB "|  @   @  |", 10, 13, '$'
    S_FIVE4  DB "|    @    |", 10, 13, '$'
    S_FIVE5  DB "|  @   @  |", 10, 13, '$'
    S_FIVE6  DB "|        @|", 10, 13, '$'
    S_FIVE7  DB "|        S|", 10, 13, '$'
    S_FIVE8  DB " ~~~~~~~~~ ", 10, 13, '$'


    S_SIX   DB " _________ ", 10, 13, '$' 
    S_SIX1  DB "|6        |", 10, 13, '$'
    S_SIX2  DB "|@ @   @  |", 10, 13, '$'
    S_SIX3  DB "|         |", 10, 13, '$'
    S_SIX4  DB "|  @   @  |", 10, 13, '$'
    S_SIX5  DB "|         |", 10, 13, '$'
    S_SIX6  DB "|  @   @ @|", 10, 13, '$'
    S_SIX7  DB "|        9|", 10, 13, '$'
    S_SIX8  DB " ~~~~~~~~~ ", 10, 13, '$'

    S_SEVEN   DB " _________ ", 10, 13, '$'
    S_SEVEN1  DB "|7        |", 10, 13, '$'
    S_SEVEN2  DB "|@ @   @  |", 10, 13, '$'
    S_SEVEN3  DB "|    @    |", 10, 13, '$'
    S_SEVEN4  DB "|  @   @  |", 10, 13, '$'
    S_SEVEN5  DB "|         |", 10, 13, '$'
    S_SEVEN6  DB "|  @   @ @|", 10, 13, '$'
    S_SEVEN7  DB "|        L|", 10, 13, '$'
    S_SEVEN8  DB " ~~~~~~~~~ ", 10, 13, '$'

    S_EIGHT   DB " _________ ", 10, 13, '$' 
    S_EIGHT1  DB "|8 @   @  |", 10, 13, '$'
    S_EIGHT2  DB "|@        |", 10, 13, '$'
    S_EIGHT3  DB "|  @   @  |", 10, 13, '$'
    S_EIGHT4  DB "|         |", 10, 13, '$'
    S_EIGHT5  DB "|  @   @  |", 10, 13, '$'
    S_EIGHT6  DB "|        @|", 10, 13, '$'
    S_EIGHT7  DB "|  @   @ 8|", 10, 13, '$'
    S_EIGHT8  DB " ~~~~~~~~~ ", 10, 13, '$'

    S_NINE    DB " _________ ", 10, 13 , '$'
    S_NINE1   DB "|9 @   @  |", 10, 13, '$'
    S_NINE2   DB "|@        |", 10, 13, '$'
    S_NINE3   DB "|  @   @  |", 10, 13, '$'
    S_NINE4   DB "|    @    |", 10, 13, '$'
    S_NINE5   DB "|  @   @  |", 10, 13, '$'
    S_NINE6   DB "|        @|", 10, 13, '$'
    S_NINE7   DB "|  @   @ 6|", 10, 13, '$'
    S_NINE8   DB " ~~~~~~~~~ ", 10, 13, '$'


    S_TEN    DB " _________ ", 10, 13 , '$'
    S_TEN1   DB "|10@   @  |", 10, 13, '$'
    S_TEN2   DB "|@   @    |", 10, 13, '$'
    S_TEN3   DB "|  @   @  |", 10, 13, '$'
    S_TEN4   DB "|         |", 10, 13, '$'
    S_TEN5   DB "|  @   @  |", 10, 13, '$'
    S_TEN6   DB "|    @   @|", 10, 13, '$'
    S_TEN7   DB "|  @   @01|", 10, 13, '$'
    S_TEN8   DB " ~~~~~~~~~ ", 10, 13, '$'


    S_JACK    DB " _________ ", 10, 13, '$' 
    S_JACK1   DB "|J /~~|_  |", 10, 13, '$'
    S_JACK2   DB "|@ | o`,  |", 10, 13, '$'
    S_JACK3   DB "|  | -|   |", 10, 13, '$'
    S_JACK4   DB "| =~)@(_= |", 10, 13, '$'
    S_JACK5   DB "|   |- |  |", 10, 13, '$'
    S_JACK6   DB "|  `.o | @|", 10, 13, '$'
    S_JACK7   DB "|  ~|__/ J|", 10, 13, '$'
    S_JACK8   DB " ~~~~~~~~~ ", 10, 13, '$'


    S_QUEEN  DB " _________ ", 10, 13, '$' 
    S_QUEEN1 DB "|Q |~~~|  |", 10, 13, '$'
    S_QUEEN2 DB "|@ /o,o\  |", 10, 13, '$'
    S_QUEEN3 DB "|  \_-_/  |", 10, 13, '$'
    S_QUEEN4 DB "| _-~@_-~ |", 10, 13, '$'
    S_QUEEN5 DB "|  /~-~\  |", 10, 13, '$'
    S_QUEEN6 DB "|  \o`o/ @|", 10, 13, '$'
    S_QUEEN7 DB "|  |___| Q|", 10, 13, '$'
    S_QUEEN8 DB " ~~~~~~~~~ ", 10, 13, '$'


    S_KING   DB " _________ ", 10, 13 , '$'
    S_KING1  DB "|K |/|\|  |", 10, 13, '$'
    S_KING2  DB "|@ /o,o\  |", 10, 13, '$'
    S_KING3  DB "|  \_-_/  |", 10, 13, '$'
    S_KING4  DB "| ~-_-~-_ |", 10, 13, '$'
    S_KING5  DB "|  /~-~\  |", 10, 13, '$'
    S_KING6  DB "|  \o`o/ @|", 10, 13, '$'
    S_KING7  DB "|  |\|/| X|", 10, 13, '$'
    S_KING8  DB " ~~~~~~~~~ ", 10, 13, '$'



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

    H_TWO   DB " _________ ", 10, 13, '$'
    H_TWO1  DB "|2        |", 10, 13, '$'
    H_TWO2  DB "|#        |", 10, 13, '$'
    H_TWO3  DB "|    #    |", 10, 13, '$'
    H_TWO4  DB "|         |", 10, 13, '$'
    H_TWO5  DB "|    #    |", 10, 13, '$'
    H_TWO6  DB "|        #|", 10, 13, '$'
    H_TWO7  DB "|        Z|", 10, 13, '$'
    H_TWO8  DB " ~~~~~~~~~ ", 10, 13, '$'

    H_THREE   DB " _________ ", 10, 13, '$'
    H_THREE1  DB "|3        |", 10, 13, '$'
    H_THREE2  DB "|#   #    |", 10, 13, '$'
    H_THREE3  DB "|         |", 10, 13, '$'
    H_THREE4  DB "|    #    |", 10, 13, '$'
    H_THREE5  DB "|         |", 10, 13, '$'
    H_THREE6  DB "|    #   #|", 10, 13, '$'
    H_THREE7  DB "|        E|", 10, 13, '$'
    H_THREE8  DB " ~~~~~~~~~ ", 10, 13, '$'


    H_FOUR   DB " _________ ", 10, 13, '$'
    H_FOUR1  DB "|4        |", 10, 13, '$'
    H_FOUR2  DB "|#        |", 10, 13, '$'
    H_FOUR3  DB "|  #   #  |", 10, 13, '$'
    H_FOUR4  DB "|         |", 10, 13, '$'
    H_FOUR5  DB "|  #   #  |", 10, 13, '$'
    H_FOUR6  DB "|        #|", 10, 13, '$'
    H_FOUR7  DB "|        4|", 10, 13, '$'
    H_FOUR8  DB " ~~~~~~~~~ ", 10, 13, '$'


    H_FIVE   DB " _________ ", 10, 13, '$'
    H_FIVE1  DB "|5        |", 10, 13, '$'
    H_FIVE2  DB "|#        |", 10, 13, '$'
    H_FIVE3  DB "|  #   #  |", 10, 13, '$'
    H_FIVE4  DB "|    #    |", 10, 13, '$'
    H_FIVE5  DB "|  #   #  |", 10, 13, '$'
    H_FIVE6  DB "|        #|", 10, 13, '$'
    H_FIVE7  DB "|        S|", 10, 13, '$'
    H_FIVE8  DB " ~~~~~~~~~ ", 10, 13, '$'


    H_SIX   DB " _________ ", 10, 13, '$' 
    H_SIX1  DB "|6        |", 10, 13, '$'
    H_SIX2  DB "|# #   #  |", 10, 13, '$'
    H_SIX3  DB "|         |", 10, 13, '$'
    H_SIX4  DB "|  #   #  |", 10, 13, '$'
    H_SIX5  DB "|         |", 10, 13, '$'
    H_SIX6  DB "|  #   # #|", 10, 13, '$'
    H_SIX7  DB "|        9|", 10, 13, '$'
    H_SIX8  DB " ~~~~~~~~~ ", 10, 13, '$'

    H_SEVEN   DB " _________ ", 10, 13, '$'
    H_SEVEN1  DB "|7        |", 10, 13, '$'
    H_SEVEN2  DB "|# #   #  |", 10, 13, '$'
    H_SEVEN3  DB "|    #    |", 10, 13, '$'
    H_SEVEN4  DB "|  #   #  |", 10, 13, '$'
    H_SEVEN5  DB "|         |", 10, 13, '$'
    H_SEVEN6  DB "|  #   # #|", 10, 13, '$'
    H_SEVEN7  DB "|        L|", 10, 13, '$'
    H_SEVEN8  DB " ~~~~~~~~~ ", 10, 13, '$'

    H_EIGHT   DB " _________ ", 10, 13, '$' 
    H_EIGHT1  DB "|8 #   #  |", 10, 13, '$'
    H_EIGHT2  DB "|#        |", 10, 13, '$'
    H_EIGHT3  DB "|  #   #  |", 10, 13, '$'
    H_EIGHT4  DB "|         |", 10, 13, '$'
    H_EIGHT5  DB "|  #   #  |", 10, 13, '$'
    H_EIGHT6  DB "|        #|", 10, 13, '$'
    H_EIGHT7  DB "|  #   # 8|", 10, 13, '$'
    H_EIGHT8  DB " ~~~~~~~~~ ", 10, 13, '$'

    H_NINE    DB " _________ ", 10, 13 , '$'
    H_NINE1   DB "|9 #   #  |", 10, 13, '$'
    H_NINE2   DB "|#        |", 10, 13, '$'
    H_NINE3   DB "|  #   #  |", 10, 13, '$'
    H_NINE4   DB "|    #    |", 10, 13, '$'
    H_NINE5   DB "|  #   #  |", 10, 13, '$'
    H_NINE6   DB "|        #|", 10, 13, '$'
    H_NINE7   DB "|  #   # 6|", 10, 13, '$'
    H_NINE8   DB " ~~~~~~~~~ ", 10, 13, '$'


    H_TEN    DB " _________ ", 10, 13 , '$'
    H_TEN1   DB "|10#   #  |", 10, 13, '$'
    H_TEN2   DB "|#   #    |", 10, 13, '$'
    H_TEN3   DB "|  #   #  |", 10, 13, '$'
    H_TEN4   DB "|         |", 10, 13, '$'
    H_TEN5   DB "|  #   #  |", 10, 13, '$'
    H_TEN6   DB "|    #   #|", 10, 13, '$'
    H_TEN7   DB "|  #   #01|", 10, 13, '$'
    H_TEN8   DB " ~~~~~~~~~ ", 10, 13, '$'


    H_JACK    DB " _________ ", 10, 13, '$' 
    H_JACK1   DB "|J /~~|_  |", 10, 13, '$'
    H_JACK2   DB "|# | o`,  |", 10, 13, '$'
    H_JACK3   DB "|  | -|   |", 10, 13, '$'
    H_JACK4   DB "| =~)#(_= |", 10, 13, '$'
    H_JACK5   DB "|   |- |  |", 10, 13, '$'
    H_JACK6   DB "|  `.o | #|", 10, 13, '$'
    H_JACK7   DB "|  ~|__/ J|", 10, 13, '$'
    H_JACK8   DB " ~~~~~~~~~ ", 10, 13, '$'


    H_QUEEN  DB " _________ ", 10, 13, '$' 
    H_QUEEN1 DB "|Q |~~~|  |", 10, 13, '$'
    H_QUEEN2 DB "|# /o,o\  |", 10, 13, '$'
    H_QUEEN3 DB "|  \_-_/  |", 10, 13, '$'
    H_QUEEN4 DB "| _-~#_-~ |", 10, 13, '$'
    H_QUEEN5 DB "|  /~-~\  |", 10, 13, '$'
    H_QUEEN6 DB "|  \o`o/ #|", 10, 13, '$'
    H_QUEEN7 DB "|  |___| Q|", 10, 13, '$'
    H_QUEEN8 DB " ~~~~~~~~~ ", 10, 13, '$'


    H_KING   DB " _________ ", 10, 13 , '$'
    H_KING1  DB "|K |/|\|  |", 10, 13, '$'
    H_KING2  DB "|# /o,o\  |", 10, 13, '$'
    H_KING3  DB "|  \_-_/  |", 10, 13, '$'
    H_KING4  DB "| ~-_-~-_ |", 10, 13, '$'
    H_KING5  DB "|  /~-~\  |", 10, 13, '$'
    H_KING6  DB "|  \o`o/ #|", 10, 13, '$'
    H_KING7  DB "|  |\|/| X|", 10, 13, '$'
    H_KING8  DB " ~~~~~~~~~ ", 10, 13, '$'


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


    ;high score
      HS_PATH  DB 'hs.txt', 00H
      HS_PATH2 DB 'hs.txt', 00H
      HS_STR   DB 6 DUP('$') ;length = original length of record + 1 (for $)
  ;--------------------------------------------------------------------------------------------

    PRINT    DB    10, 13, 'Hit or Stand? $'
    PRINT_WIN DB 10, 13, 'You win!', 10, 13, '$'
    PRINT_LOSE DB 10, 13, 'GAME OVER! You lost.$'
    PRINT_DRAW DB 10, 13, 'Draw!', 10, 13, '$'
    
    PRINT_1 DB 'Computer is making a move.$'
    PRINT_2 DB 'Computer is making a move..$'
    PRINT_3 DB 'Computer is making a move...$'

    KBINPUT1  DB ?, '$'
    KBINPUT2  DB ?, '$'

    QUIT1 DB 'q$'
    QUIT2 DB 'Q$'
    TERMINATE_STR DB 'T H A N K  Y O U  F O R  P L A Y I N G ! ! ! $'
    EXIT_STR DB 10, 13, 10, 13, "PRESS ESC TO EXIT, PRESS *down arrow key* TO TRY AGAIN", '$'
    INSTRUCTIONS DB "Press 'h' to hit. Press 's' to stand$"

    MAXLEN DW 30
    MONEY_INIT DW 90
    PLAYER_CARDVAL DB 0, '$'
    ENEMY_CARDVAL DB 0, '$'
    SCOREHOLDER DB 0

    ITWORKED DB 'LOLOLOL IT WORKED!$'

    TEMP_LOC DB 36
    TEMP_LOC2 DB 0
    PRINT_LOC DB 50
    PRINT_LOC2 DB 22
    SETUP_LOC DB 42
    CARDVAL_MSG DB "You're current card value is: $"
    RAND_NUM DB 0000
    temp_randvalH db 03
    temp_randvalL db 07
   
    RANDOMIZER_VALUE Dw 0000


  ERROR1_STR    DB 'Error in opening file.$'
  ERROR2_STR   DB 'Error reading from file.$'
  ERROR3_STR    DB 'No record read from file.$'

  ERROR1_STR2    DB 'Error in creating file.$'
  ERROR2_STR2   DB 'Error writing in file.$'
  ERROR3_STR2    DB 'Record not written properly.$'


    CURR_VAL DB 30H, 10, 13, '$'
    CURR_HIGHSCORE_STR DB 'Highest score: ', '$'
    CURR_PLAYERSCORE_STR DB 10, 13, 'Current score: ', '$'
    INPUT1 DB ?


    PRESS_ANY_KEY DB 'Press any key to continue..$'
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
    MOV AH, 09
    INT 21H
    JMP   LISTENER
  HOW_SLCT:
    MOV STATE, 02               ; set state to 3
    LEA DX, START_2             ; display exit is selected
    MOV AH, 09
    INT 21H
    JMP   LISTENER
  EXIT_SLCT:
    MOV STATE, 03               ; set state to 2
    LEA DX, START_3             ; display how to play is selected
    MOV AH, 09
    INT 21H
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
    MOV AH, 09
    INT 21H
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

  REWRITE:
  CALL C_FILE
  CALL W_FILE

  GAME: 

  CALL R_FILE
  MOV AL, CURR_VAL
  CMP AL, HS_STR
  JG REWRITE

  MOV DL, 00
  MOV DH, 00
  CALL _SET_CURSOR

  ;display high score
  LEA DX, CURR_HIGHSCORE_STR
  CALL DISPLAY_STR

  ;current hs points

  LEA DX, HS_STR
  MOV AH, 09
  INT 21H

  ; current winstreak
  LEA DX, CURR_PLAYERSCORE_STR
  CALL DISPLAY_STR

  ; current value of winstreak
  LEA DX, CURR_VAL
  CALL DISPLAY_STR
  ; how to play
  LEA DX, INSTRUCTIONS
  CALL DISPLAY_STR

  ;cursor for PLAYER
  MOV TEMP_LOC, 18
  MOV TEMP_LOC2, 10
  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  ;player's turn
  CALL PLAYER_MOVE  

  ;reset scoreholder points
  MOV SCOREHOLDER, 0

  ;clear instructions when AI's turn to move
  MOV   CX, 0200H
  MOV   DX, 054FH
  CALL CUSTOM_CLEAR_SCREEN

  ;cursor for enemy
  MOV TEMP_LOC, 38
  mov TEMP_LOC2,00
  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR
  

  CALL ENEMY_MOVE
  MOV SCOREHOLDER, 0 ;reset scoreholder points

  ADD PLAYER_CARDVAL, '0' ; convert to string value of int

  LEA DX, PLAYER_CARDVAL  ;display the card value
  CALL DISPLAY_STR

  ADD ENEMY_CARDVAL, '0'  ; convert to string value of int

  LEA DX, ENEMY_CARDVAL   ;display enemy card value
  CALL DISPLAY_STR

  MOV AL, PLAYER_CARDVAL        ; moving player points to AL
  CMP AL, ENEMY_CARDVAL         ; compare if player's points are higher
  JG WIN
  JL LOSE
  JE DRAW

  FIN:
  CALL _TERMINATE               ; early terminate from game screen


  FINISH:

  MOV DL, PRINT_LOC
  MOV DH, PRINT_LOC2
  CALL _SET_CURSOR
  
  LEA DX, EXIT_STR                ; display how to exit the game
  CALL DISPLAY_STR

  B10:
  MOV NEW_INPUT, '$'              ; clear input holder
  CALL _GET_KEY                   ; listen for inputs

  ;try again

  CMP NEW_INPUT, 50H            ;down key
  JE _TRY_AGAIN

  CMP NEW_INPUT, 1B               ; esc key press
  JNE B10
  CALL _TERMINATE

  DRAW:     

  ;set cursor

  MOV DL, 00
  MOV DH, 22
  CALL _SET_CURSOR

  ;print results
  LEA DX, PRINT_DRAW
  CALL DISPLAY_STR

  ;clear enemy status
  MOV   CX, 1330H
  MOV   DX, 184FH
  call custom_clear_screen

  ;press any key to continue
  CALL ACCEPT_CHAR
  CALL RESET_VARIABLES ;EXCEPT SCORE
 ; CALL _CLEAR_SCREEN

  JMP GAME
  
  WIN:

  ;print results
  ;set cursor 
  MOV DL, 00
  MOV DH, 22
  CALL _SET_CURSOR
  LEA DX, PRINT_WIN
  CALL DISPLAY_STR

  INC CURR_VAL ;increment winstreak count



  MOV   CX, 1330H
  MOV   DX, 184FH
  call custom_clear_screen

  CALL ACCEPT_CHAR
  CALL RESET_VARIABLES ;EXCEPT SCORE

  JMP GAME

  LOSE:

  MOV DL, PRINT_LOC
  MOV DH, 21
  CALL _SET_CURSOR
  LEA DX, PRINT_LOSE ;print results
  CALL DISPLAY_STR



  MOV   CX, 1330H
  MOV   DX, 184FH
  call custom_clear_screen

  JMP FINISH

  _TRY_AGAIN:
  CALL RESET_VARIABLES
  MOV CURR_VAL, 30H
  JMP GAME
;------------------------------------------------------------
R_FILE PROC NEAR
  ;open file
    MOV AH, 3DH    
    MOV AL, 00                  
    LEA DX, HS_PATH         ; open start is selected display
    INT 21H
    MOV FILEHANDLE, AX
    MOV AH, 3FH          
    MOV BX, FILEHANDLE    
    MOV CX, 5        
    LEA DX, HS_STR             ; save file contents to a variable
    INT 21H
    MOV AH, 3EH                 ;request close file
    MOV BX, FILEHANDLE    
    INT 21H
  
  RET
R_FILE ENDP 
;------------------------------------------------------------
C_FILE PROC NEAR

  ;create file
  MOV AH, 3CH            ;request create file
  MOV CX, 00             ;normal attribute
  LEA DX, HS_PATH2       ;load path and file name
  INT 21H
  JC DISPLAY_ERROR1     ;if there's error in creating file, carry flag = 1, otherwise 0
  MOV FILEHANDLE, AX

  RET
C_FILE ENDP

;------------------------------------------------------------
W_FILE PROC NEAR

  ;write file
  MOV AH, 40H           ;request write record
  MOV BX, FILEHANDLE    ;file handle
  MOV CX, 1             ;record length
  LEA DX, CURR_VAL    ;address of output area
  INT 21H
  JC DISPLAY2_ERROR2     ;if carry flag = 1, there's error in writing (nothing is written)
  CMP AX, 1            ;after writing, set AX to size of chars nga na write
  JNE DISPLAY2_ERROR3

  ;close file handle
  MOV AH, 3EH           ;request close file
  MOV BX, FILEHANDLE    ;file handle
  INT 21H

  RET
W_FILE ENDP
;------------------------------------------------------------

DISPLAY2_ERROR1 PROC NEAR
  LEA DX, ERROR1_STR2
  MOV AH, 09
  INT 21H

  JMP FINISH
  RET
DISPLAY2_ERROR1 ENDP
;------------------------------------------------------------

DISPLAY2_ERROR2 PROC NEAR
  LEA DX, ERROR2_STR2
  MOV AH, 09
  INT 21H
  JMP FINISH
  RET
DISPLAY2_ERROR2 ENDP


;------------------------------------------------------------ 
DISPLAY2_ERROR3 PROC NEAR
  LEA DX, ERROR3_STR2
  MOV AH, 09
  jmp finish
  RET  
DISPLAY2_ERROR3 ENDP

;------------------------------------------------------------
  ACCEPT_CHAR PROC NEAR

    LEA DX, PRESS_ANY_KEY
    CALL DISPLAY_STR


    ;get char input
      MOV AH, 10H
      INT 16H
      MOV INPUT1, AL

        RET

  ACCEPT_CHAR ENDP
  ;------------------------------------------------------------
    DISPLAY_ERROR1:
  LEA DX, ERROR1_STR
  MOV AH, 09
  INT 21H

  JMP FINISH

  ;------------------------------------------------------------
DISPLAY_ERROR2:
  LEA DX, ERROR2_STR
  MOV AH, 09
  INT 21H

  JMP FINISH

  ;------------------------------------------------------------
DISPLAY_ERROR3:
  LEA DX, ERROR3_STR
  MOV AH, 09
  INT 21H

  JMP FINISH
  ;------------------------------------------------------------
  RESET_VARIABLES PROC NEAR

  MOV SCOREHOLDER, 0
  MOV ENEMY_CARDVAL, 0
  MOV PLAYER_CARDVAL, 0 

  CALL _CLEAR_SCREEN
  RET
  RESET_VARIABLES ENDP
  ;------------------------------------------------------------
  _SET_CURSOR PROC  NEAR
  
    MOV   AH, 02H
    MOV   BH, 00
    INT   10H

  RET
  _SET_CURSOR ENDP
  ;-------------------------------------------
  _GET_KEY  PROC  NEAR
  MOV   AH, 01H   ;check for input
  INT   16H
  JZ    __LEAVETHIS ;no input returns to the caller
  MOV   AH, 00H   
  INT   16H
  MOV   NEW_INPUT, AH   ; set the value of the input
  __LEAVETHIS:
  RET
  _GET_KEY  ENDP
  ;------------------------------------------------------------
 _CLEAR_SCREEN PROC NEAR
      MOV   AX, 0600H
      MOV   BH, 02H                 ; default dosbox colors
      MOV   CX, 0000H               ; from index (0,0)
      MOV   DX, 184FH               ; to index (24, 79)
      INT   10H
      RET
  _CLEAR_SCREEN ENDP
   ;------------------------------------------------------------
  CUSTOM_CLEAR_SCREEN PROC NEAR ;edit cx, dx point values
  MOV   AX, 0600H
  MOV   BH, 02H
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

      B20:
        CALL ACCEPT_STR1        ; take the selected choice

        MOV BH, 'h'             ; set bh to 'h'
        MOV BL, 's'             ; set bl to 's'
        CMP KBINPUT1, BH        ; check if hit
        JE HIT
        CMP KBINPUT1, BL        ; check if hit
        JE _RET
        JMP B20 
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
  MOV AH, 00h  ; interrupts to get system time        
  INT 1AH      ; CX:DX now hold number of clock ticks since midnight      

  mov  ax, dx
  xor  dx, dx
  mov  cx, 34H  
  div  cx       ; here dx contains the remainder of the division - from 0 to 33H


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
  DISPLAY_S_ACE:
  ADD SCOREHOLDER, 11

  MOV DL, TEMP_LOC 
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 
  LEA DX, S_ACE
  CALL DISPLAY_STR


  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 
  LEA DX, S_ACE1
  CALL DISPLAY_STR


  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR
  LEA DX, S_ACE2
  CALL DISPLAY_STR

  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR
  LEA DX, S_ACE3
  CALL DISPLAY_STR

  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR
  LEA DX, S_ACE4
  CALL DISPLAY_STR

  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2

  CALL _SET_CURSOR
  LEA DX, S_ACE5
  CALL DISPLAY_STR

  INC TEMP_LOC2


  MOV DL, TEMP_LOC 
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, S_ACE6
  CALL DISPLAY_STR

  INC TEMP_LOC2


  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, S_ACE7
  CALL DISPLAY_STR

  INC TEMP_LOC2

  MOV DL, TEMP_LOC 
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, S_ACE8
  CALL DISPLAY_STR

  SUB TEMP_LOC2, 7


  JMP givecard_ret
  ;------------------------------------------------------------
  DISPLAY_S2:
  ADD SCOREHOLDER, 2
  
  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, S_TWO
  CALL DISPLAY_STR
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, S_TWO1
  CALL DISPLAY_STR
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, S_TWO2
  CALL DISPLAY_STR
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, S_TWO3
  CALL DISPLAY_STR
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, S_TWO4
  CALL DISPLAY_STR
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, S_TWO5
  CALL DISPLAY_STR
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, S_TWO6
  CALL DISPLAY_STR
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, S_TWO7
  CALL DISPLAY_STR
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, S_TWO8
  CALL DISPLAY_STR

  SUB TEMP_LOC2, 8


  JMP givecard_ret
  ;------------------------------------------------------------
  DISPLAY_S3:
  ADD SCOREHOLDER, 3
  
  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, S_THREE
  CALL DISPLAY_STR

  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, S_THREE1
  CALL DISPLAY_STR
  
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, S_THREE2
  CALL DISPLAY_STR
  
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, S_THREE3
  CALL DISPLAY_STR
  
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, S_THREE4
  CALL DISPLAY_STR

  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 
  
  LEA DX, S_THREE5
  CALL DISPLAY_STR

  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, S_THREE6
  CALL DISPLAY_STR

  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 
  

  LEA DX, S_THREE7
  CALL DISPLAY_STR

  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 
  
  LEA DX, S_THREE8
  CALL DISPLAY_STR

  SUB TEMP_LOC2, 8

  JMP givecard_ret
  ;------------------------------------------------------------
  DISPLAY_S4:
  ADD SCOREHOLDER, 4

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, S_FOUR
  CALL DISPLAY_STR

  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 
  
  LEA DX, S_FOUR1
  CALL DISPLAY_STR
  
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, S_FOUR2
  CALL DISPLAY_STR

  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, S_FOUR3
  CALL DISPLAY_STR

  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, S_FOUR4
  CALL DISPLAY_STR

  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, S_FOUR5
  CALL DISPLAY_STR

  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, S_FOUR6
  CALL DISPLAY_STR
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, S_FOUR7
  CALL DISPLAY_STR
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, S_FOUR8
  CALL DISPLAY_STR
  
  SUB TEMP_LOC2, 8

  JMP givecard_ret
  ;------------------------------------------------------------
  DISPLAY_S5:
  ADD SCOREHOLDER, 5


  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, S_FIVE
  CALL DISPLAY_STR

  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, S_FIVE1
  CALL DISPLAY_STR

  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, S_FIVE2
  CALL DISPLAY_STR

  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, S_FIVE3
  CALL DISPLAY_STR
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, S_FIVE4
  CALL DISPLAY_STR
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, S_FIVE5
  CALL DISPLAY_STR
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, S_FIVE6
  CALL DISPLAY_STR
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, S_FIVE7
  CALL DISPLAY_STR
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, S_FIVE8
  CALL DISPLAY_STR

  SUB TEMP_LOC2, 8

  JMP givecard_ret
  ;-------------------------------------------------------------------------------------------------------------
  DISPLAY_S6:
  ADD SCOREHOLDER, 6


  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, S_SIX
  CALL DISPLAY_STR

  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, S_SIX1
  CALL DISPLAY_STR

  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, S_SIX2
  CALL DISPLAY_STR

  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, S_SIX3
  CALL DISPLAY_STR

  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, S_SIX4
  CALL DISPLAY_STR

  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, S_SIX5
  CALL DISPLAY_STR

  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, S_SIX6
  CALL DISPLAY_STR

  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, S_SIX7
  CALL DISPLAY_STR

  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, S_SIX8
  CALL DISPLAY_STR

  SUB TEMP_LOC2, 8

  JMP givecard_ret
  ;------------------------------------------------------------
  DISPLAY_S7:
  ADD SCOREHOLDER, 7

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, S_SEVEN
  CALL DISPLAY_STR


  INC TEMP_LOC2
  

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, S_SEVEN1
  CALL DISPLAY_STR

  INC TEMP_LOC2

  

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, S_SEVEN2
  CALL DISPLAY_STR

  INC TEMP_LOC2
  

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, S_SEVEN3
  CALL DISPLAY_STR
  INC TEMP_LOC2



  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, S_SEVEN4
  CALL DISPLAY_STR
  INC TEMP_LOC2
  
  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, S_SEVEN5
  CALL DISPLAY_STR
  INC TEMP_LOC2


  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, S_SEVEN6
  CALL DISPLAY_STR
  INC TEMP_LOC2


  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, S_SEVEN7
  CALL DISPLAY_STR
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, S_SEVEN8
  CALL DISPLAY_STR

  SUB TEMP_LOC2, 8


  JMP givecard_ret
  ;------------------------------------------------------------
  DISPLAY_S8:
  ADD SCOREHOLDER, 8

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, S_EIGHT
  CALL DISPLAY_STR

  INC TEMP_LOC2


  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, S_EIGHT1
  CALL DISPLAY_STR
  INC TEMP_LOC2

  
  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, S_EIGHT2
  CALL DISPLAY_STR
  INC TEMP_LOC2

  
  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 


  LEA DX, S_EIGHT3
  CALL DISPLAY_STR
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, S_EIGHT4
  CALL DISPLAY_STR
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, S_EIGHT5
  CALL DISPLAY_STR
  INC TEMP_LOC2


  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, S_EIGHT6
  CALL DISPLAY_STR
  INC TEMP_LOC2  

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, S_EIGHT7
  CALL DISPLAY_STR
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, S_EIGHT8
  CALL DISPLAY_STR

  SUB TEMP_LOC2, 8

  JMP givecard_ret
  ;------------------------------------------------------------
  DISPLAY_S9:
  ADD SCOREHOLDER, 9


  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, S_NINE
  CALL DISPLAY_STR
  INC TEMP_LOC2


  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR  
  LEA DX, S_NINE1
  CALL DISPLAY_STR
  
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 
  LEA DX, S_NINE2
  CALL DISPLAY_STR
  
  INC TEMP_LOC2
  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 
  LEA DX, S_NINE3
  CALL DISPLAY_STR
  
  INC TEMP_LOC2
  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 
  LEA DX, S_NINE4
  CALL DISPLAY_STR
  
  INC TEMP_LOC2
  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 
  LEA DX, S_NINE5
  CALL DISPLAY_STR
  
  INC TEMP_LOC2
  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, S_NINE6
  CALL DISPLAY_STR
  
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 
  LEA DX, S_NINE7
  CALL DISPLAY_STR
  
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 
  LEA DX, S_NINE8
  CALL DISPLAY_STR

  SUB TEMP_LOC2, 8


  JMP givecard_ret
  ;------------------------------------------------------------
  DISPLAY_S10:
  ADD SCOREHOLDER, 10



  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, S_TEN
  CALL DISPLAY_STR
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, S_TEN1
  CALL DISPLAY_STR
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, S_TEN2
  CALL DISPLAY_STR
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, S_TEN3
  CALL DISPLAY_STR
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, S_TEN4
  CALL DISPLAY_STR
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, S_TEN5
  CALL DISPLAY_STR
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, S_TEN6
  CALL DISPLAY_STR
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, S_TEN7
  CALL DISPLAY_STR
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, S_TEN8
  CALL DISPLAY_STR

  SUB TEMP_LOC2, 8

  JMP givecard_ret
  ;------------------------------------------------------------
  DISPLAY_SJACK:
  ADD SCOREHOLDER, 10

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR
  
  LEA DX, S_JACK
  CALL DISPLAY_STR
  INC TEMP_LOC2
  

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR
  
  LEA DX, S_JACK1
  CALL DISPLAY_STR
  INC TEMP_LOC2
  

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR
  
  LEA DX, S_JACK2
  CALL DISPLAY_STR
  INC TEMP_LOC2


  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, S_JACK3
  CALL DISPLAY_STR
  INC TEMP_LOC2
  
  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, S_JACK4
  CALL DISPLAY_STR
  INC TEMP_LOC2


  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, S_JACK5
  CALL DISPLAY_STR
  INC TEMP_LOC2
  
  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, S_JACK6
  CALL DISPLAY_STR
  INC TEMP_LOC2
  
  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, S_JACK7
  CALL DISPLAY_STR
  INC TEMP_LOC2
  
  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, S_JACK8
  CALL DISPLAY_STR

  SUB TEMP_LOC2, 8


  JMP givecard_ret
  ;------------------------------------------------------------
  DISPLAY_SQUEEN:
  ADD SCOREHOLDER, 10


  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, S_QUEEN
  CALL DISPLAY_STR

  INC TEMP_LOC2



  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR


  LEA DX, S_QUEEN1
  CALL DISPLAY_STR

  INC TEMP_LOC2



  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, S_QUEEN2
  CALL DISPLAY_STR

  INC TEMP_LOC2


  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, S_QUEEN3
  CALL DISPLAY_STR

  INC TEMP_LOC2


  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, S_QUEEN4
  CALL DISPLAY_STR

  INC TEMP_LOC2


  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, S_QUEEN5
  CALL DISPLAY_STR

  INC TEMP_LOC2



  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, S_QUEEN6
  CALL DISPLAY_STR

  INC TEMP_LOC2



  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, S_QUEEN7
  CALL DISPLAY_STR

  INC TEMP_LOC2


  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, S_QUEEN8
  CALL DISPLAY_STR

  SUB TEMP_LOC2, 8

  JMP givecard_ret
  ;------------------------------------------------------------
  DISPLAY_SKING:
  ADD SCOREHOLDER, 10


  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, S_KING
  CALL DISPLAY_STR
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, S_KING1
  CALL DISPLAY_STR
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, S_KING2
  CALL DISPLAY_STR
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, S_KING3
  CALL DISPLAY_STR
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, S_KING4
  CALL DISPLAY_STR
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, S_KING5
  CALL DISPLAY_STR
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, S_KING6
  CALL DISPLAY_STR
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, S_KING7
  CALL DISPLAY_STR
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, S_KING8
  CALL DISPLAY_STR
  
  SUB TEMP_LOC2, 8


  JMP givecard_ret
  ;------------------------------------------------------------
  DISPLAY_D_ACE:
  ADD SCOREHOLDER, 11

  MOV DL, TEMP_LOC 
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 
  LEA DX, D_ACE
  CALL DISPLAY_STR


  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 
  LEA DX, D_ACE1
  CALL DISPLAY_STR


  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR
  LEA DX, D_ACE2
  CALL DISPLAY_STR

  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR
  LEA DX, D_ACE3
  CALL DISPLAY_STR

  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR
  LEA DX, D_ACE4
  CALL DISPLAY_STR

  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2

  CALL _SET_CURSOR
  LEA DX, D_ACE5
  CALL DISPLAY_STR

  INC TEMP_LOC2


  MOV DL, TEMP_LOC 
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, D_ACE6
  CALL DISPLAY_STR

  INC TEMP_LOC2


  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, D_ACE7
  CALL DISPLAY_STR

  INC TEMP_LOC2

  MOV DL, TEMP_LOC 
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, D_ACE8
  CALL DISPLAY_STR

  SUB TEMP_LOC2, 7


  JMP givecard_ret
  ;------------------------------------------------------------
  DISPLAY_D2:
  ADD SCOREHOLDER, 2
  
  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, D_TWO
  CALL DISPLAY_STR
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, D_TWO1
  CALL DISPLAY_STR
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, D_TWO2
  CALL DISPLAY_STR
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, D_TWO3
  CALL DISPLAY_STR
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, D_TWO4
  CALL DISPLAY_STR
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, D_TWO5
  CALL DISPLAY_STR
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, D_TWO6
  CALL DISPLAY_STR
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, D_TWO7
  CALL DISPLAY_STR
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, D_TWO8
  CALL DISPLAY_STR

  SUB TEMP_LOC2, 8


  JMP givecard_ret
  ;------------------------------------------------------------
  DISPLAY_D3:
  ADD SCOREHOLDER, 3
  
  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, D_THREE
  CALL DISPLAY_STR

  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, D_THREE1
  CALL DISPLAY_STR
  
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, D_THREE2
  CALL DISPLAY_STR
  
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, D_THREE3
  CALL DISPLAY_STR
  
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, D_THREE4
  CALL DISPLAY_STR

  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 
  
  LEA DX, D_THREE5
  CALL DISPLAY_STR

  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, D_THREE6
  CALL DISPLAY_STR

  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 
  

  LEA DX, D_THREE7
  CALL DISPLAY_STR

  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 
  
  LEA DX, D_THREE8
  CALL DISPLAY_STR

  SUB TEMP_LOC2, 8

  JMP givecard_ret
  ;------------------------------------------------------------
  DISPLAY_D4:
  ADD SCOREHOLDER, 4

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, D_FOUR
  CALL DISPLAY_STR

  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 
  
  LEA DX, D_FOUR1
  CALL DISPLAY_STR
  
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, D_FOUR2
  CALL DISPLAY_STR

  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, D_FOUR3
  CALL DISPLAY_STR

  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, D_FOUR4
  CALL DISPLAY_STR

  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, D_FOUR5
  CALL DISPLAY_STR

  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, D_FOUR6
  CALL DISPLAY_STR
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, D_FOUR7
  CALL DISPLAY_STR
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, D_FOUR8
  CALL DISPLAY_STR
  
  SUB TEMP_LOC2, 8

  JMP givecard_ret
  ;------------------------------------------------------------
  DISPLAY_D5:
  ADD SCOREHOLDER, 5


  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, D_FIVE
  CALL DISPLAY_STR

  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, D_FIVE1
  CALL DISPLAY_STR

  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, D_FIVE2
  CALL DISPLAY_STR

  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, D_FIVE3
  CALL DISPLAY_STR
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, D_FIVE4
  CALL DISPLAY_STR
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, D_FIVE5
  CALL DISPLAY_STR
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, D_FIVE6
  CALL DISPLAY_STR
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, D_FIVE7
  CALL DISPLAY_STR
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, D_FIVE8
  CALL DISPLAY_STR

  SUB TEMP_LOC2, 8

  JMP givecard_ret
  ;-------------------------------------------------------------------------------------------------------------
  DISPLAY_D6:
  ADD SCOREHOLDER, 6


  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, D_SIX
  CALL DISPLAY_STR

  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, D_SIX1
  CALL DISPLAY_STR

  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, D_SIX2
  CALL DISPLAY_STR

  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, D_SIX3
  CALL DISPLAY_STR

  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, D_SIX4
  CALL DISPLAY_STR

  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, D_SIX5
  CALL DISPLAY_STR

  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, D_SIX6
  CALL DISPLAY_STR

  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, D_SIX7
  CALL DISPLAY_STR

  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, D_SIX8
  CALL DISPLAY_STR

  SUB TEMP_LOC2, 8

  JMP givecard_ret
  ;------------------------------------------------------------
  DISPLAY_D7:
  ADD SCOREHOLDER, 7

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, D_SEVEN
  CALL DISPLAY_STR


  INC TEMP_LOC2
  

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, D_SEVEN1
  CALL DISPLAY_STR

  INC TEMP_LOC2

  

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, D_SEVEN2
  CALL DISPLAY_STR

  INC TEMP_LOC2
  

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, D_SEVEN3
  CALL DISPLAY_STR
  INC TEMP_LOC2



  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, D_SEVEN4
  CALL DISPLAY_STR
  INC TEMP_LOC2
  
  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, D_SEVEN5
  CALL DISPLAY_STR
  INC TEMP_LOC2


  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, D_SEVEN6
  CALL DISPLAY_STR
  INC TEMP_LOC2


  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, D_SEVEN7
  CALL DISPLAY_STR
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, D_SEVEN8
  CALL DISPLAY_STR

  SUB TEMP_LOC2, 8


  JMP givecard_ret
  ;------------------------------------------------------------
  DISPLAY_D8:
  ADD SCOREHOLDER, 8

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, D_EIGHT
  CALL DISPLAY_STR

  INC TEMP_LOC2


  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, D_EIGHT1
  CALL DISPLAY_STR
  INC TEMP_LOC2

  
  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, D_EIGHT2
  CALL DISPLAY_STR
  INC TEMP_LOC2

  
  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 


  LEA DX, D_EIGHT3
  CALL DISPLAY_STR
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, D_EIGHT4
  CALL DISPLAY_STR
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, D_EIGHT5
  CALL DISPLAY_STR
  INC TEMP_LOC2


  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, D_EIGHT6
  CALL DISPLAY_STR
  INC TEMP_LOC2  

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, D_EIGHT7
  CALL DISPLAY_STR
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, D_EIGHT8
  CALL DISPLAY_STR

  SUB TEMP_LOC2, 8

  JMP givecard_ret
  ;------------------------------------------------------------
  DISPLAY_D9:
  ADD SCOREHOLDER, 9


  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, D_NINE
  CALL DISPLAY_STR
  INC TEMP_LOC2


  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR  
  LEA DX, D_NINE1
  CALL DISPLAY_STR
  
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 
  LEA DX, D_NINE2
  CALL DISPLAY_STR
  
  INC TEMP_LOC2
  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 
  LEA DX, D_NINE3
  CALL DISPLAY_STR
  
  INC TEMP_LOC2
  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 
  LEA DX, D_NINE4
  CALL DISPLAY_STR
  
  INC TEMP_LOC2
  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 
  LEA DX, D_NINE5
  CALL DISPLAY_STR
  
  INC TEMP_LOC2
  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, D_NINE6
  CALL DISPLAY_STR
  
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 
  LEA DX, D_NINE7
  CALL DISPLAY_STR
  
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 
  LEA DX, D_NINE8
  CALL DISPLAY_STR

  SUB TEMP_LOC2, 8


  JMP givecard_ret
  ;------------------------------------------------------------
  DISPLAY_D10:
  ADD SCOREHOLDER, 10



  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, D_TEN
  CALL DISPLAY_STR
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, D_TEN1
  CALL DISPLAY_STR
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, D_TEN2
  CALL DISPLAY_STR
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, D_TEN3
  CALL DISPLAY_STR
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, D_TEN4
  CALL DISPLAY_STR
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, D_TEN5
  CALL DISPLAY_STR
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, D_TEN6
  CALL DISPLAY_STR
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, D_TEN7
  CALL DISPLAY_STR
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, D_TEN8
  CALL DISPLAY_STR

  SUB TEMP_LOC2, 8

  JMP givecard_ret
  ;------------------------------------------------------------
  DISPLAY_DJACK:
  ADD SCOREHOLDER, 10

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR
  
  LEA DX, D_JACK
  CALL DISPLAY_STR
  INC TEMP_LOC2
  

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR
  
  LEA DX, D_JACK1
  CALL DISPLAY_STR
  INC TEMP_LOC2
  

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR
  
  LEA DX, D_JACK2
  CALL DISPLAY_STR
  INC TEMP_LOC2


  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, D_JACK3
  CALL DISPLAY_STR
  INC TEMP_LOC2
  
  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, D_JACK4
  CALL DISPLAY_STR
  INC TEMP_LOC2


  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, D_JACK5
  CALL DISPLAY_STR
  INC TEMP_LOC2
  
  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, D_JACK6
  CALL DISPLAY_STR
  INC TEMP_LOC2
  
  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, D_JACK7
  CALL DISPLAY_STR
  INC TEMP_LOC2
  
  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, D_JACK8
  CALL DISPLAY_STR

  SUB TEMP_LOC2, 8


  JMP givecard_ret
  ;------------------------------------------------------------
  DISPLAY_DQUEEN:
  ADD SCOREHOLDER, 10


  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, D_QUEEN
  CALL DISPLAY_STR

  INC TEMP_LOC2



  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR


  LEA DX, D_QUEEN1
  CALL DISPLAY_STR

  INC TEMP_LOC2



  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, D_QUEEN2
  CALL DISPLAY_STR

  INC TEMP_LOC2


  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, D_QUEEN3
  CALL DISPLAY_STR

  INC TEMP_LOC2


  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, D_QUEEN4
  CALL DISPLAY_STR

  INC TEMP_LOC2


  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, D_QUEEN5
  CALL DISPLAY_STR

  INC TEMP_LOC2



  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, D_QUEEN6
  CALL DISPLAY_STR

  INC TEMP_LOC2



  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, D_QUEEN7
  CALL DISPLAY_STR

  INC TEMP_LOC2


  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, D_QUEEN8
  CALL DISPLAY_STR

  SUB TEMP_LOC2, 8

  JMP givecard_ret
  ;------------------------------------------------------------
  DISPLAY_DKING:
  ADD SCOREHOLDER, 10


  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, D_KING
  CALL DISPLAY_STR
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, D_KING1
  CALL DISPLAY_STR
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, D_KING2
  CALL DISPLAY_STR
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, D_KING3
  CALL DISPLAY_STR
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, D_KING4
  CALL DISPLAY_STR
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, D_KING5
  CALL DISPLAY_STR
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, D_KING6
  CALL DISPLAY_STR
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, D_KING7
  CALL DISPLAY_STR
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, D_KING8
  CALL DISPLAY_STR
  
  SUB TEMP_LOC2, 8


  JMP givecard_ret
  ;------------------------------------------------------------


  ;------------------------------------------------------------
  DISPLAY_H_ACE:
  ADD SCOREHOLDER, 11

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
  DISPLAY_H2:
  ADD SCOREHOLDER, 2
  
  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, H_TWO
  CALL DISPLAY_STR
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, H_TWO1
  CALL DISPLAY_STR
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, H_TWO2
  CALL DISPLAY_STR
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, H_TWO3
  CALL DISPLAY_STR
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, H_TWO4
  CALL DISPLAY_STR
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, H_TWO5
  CALL DISPLAY_STR
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, H_TWO6
  CALL DISPLAY_STR
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, H_TWO7
  CALL DISPLAY_STR
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, H_TWO8
  CALL DISPLAY_STR

  SUB TEMP_LOC2, 8


  JMP givecard_ret
  ;------------------------------------------------------------
  DISPLAY_H3:
  ADD SCOREHOLDER, 3
  
  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, H_THREE
  CALL DISPLAY_STR

  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, H_THREE1
  CALL DISPLAY_STR
  
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, H_THREE2
  CALL DISPLAY_STR
  
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, H_THREE3
  CALL DISPLAY_STR
  
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, H_THREE4
  CALL DISPLAY_STR

  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 
  
  LEA DX, H_THREE5
  CALL DISPLAY_STR

  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, H_THREE6
  CALL DISPLAY_STR

  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 
  

  LEA DX, H_THREE7
  CALL DISPLAY_STR

  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 
  
  LEA DX, H_THREE8
  CALL DISPLAY_STR

  SUB TEMP_LOC2, 8

  JMP givecard_ret
  ;------------------------------------------------------------
  DISPLAY_H4:
  ADD SCOREHOLDER, 4

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, H_FOUR
  CALL DISPLAY_STR

  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 
  
  LEA DX, H_FOUR1
  CALL DISPLAY_STR
  
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, H_FOUR2
  CALL DISPLAY_STR

  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, H_FOUR3
  CALL DISPLAY_STR

  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, H_FOUR4
  CALL DISPLAY_STR

  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, H_FOUR5
  CALL DISPLAY_STR

  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, H_FOUR6
  CALL DISPLAY_STR
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, H_FOUR7
  CALL DISPLAY_STR
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, H_FOUR8
  CALL DISPLAY_STR
  
  SUB TEMP_LOC2, 8

  JMP givecard_ret
  ;------------------------------------------------------------
  DISPLAY_H5:
  ADD SCOREHOLDER, 5


  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, H_FIVE
  CALL DISPLAY_STR

  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, H_FIVE1
  CALL DISPLAY_STR

  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, H_FIVE2
  CALL DISPLAY_STR

  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, H_FIVE3
  CALL DISPLAY_STR
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, H_FIVE4
  CALL DISPLAY_STR
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, H_FIVE5
  CALL DISPLAY_STR
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, H_FIVE6
  CALL DISPLAY_STR
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, H_FIVE7
  CALL DISPLAY_STR
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, H_FIVE8
  CALL DISPLAY_STR

  SUB TEMP_LOC2, 8

  JMP givecard_ret
  ;------------------------------------------------------------
  GIVE_CARD PROC NEAR

  CALL RANDOMIZE    ;generate a random number

  MOV RAND_NUM, DL  ;save random number

  ;change position per card drawn

  ADD TEMP_LOC, 3
  ADD TEMP_LOC2, 1

;                       HEART
;------------------------------------------------------------------- 
  CMP RAND_NUM, 1
  JE DISPLAY_H_ACE1
  
  CMP RAND_NUM, 2
  JE DISPLAY_HTWO
  
  CMP RAND_NUM, 3
  JE DISPLAY_HTHREE
   
  CMP RAND_NUM, 4
  JE DISPLAY_HFOUR
   
  CMP RAND_NUM, 5
  JE DISPLAY_HFIVE
   
  CMP RAND_NUM, 6
  JE DISPLAY_HSIX
   
  CMP RAND_NUM, 7  
  JE DISPLAY_HSEVEN
   
  CMP RAND_NUM, 8
  JE DISPLAY_HEIGHT
   
  CMP RAND_NUM, 9
  JE DISPLAY_HNINE
   
  CMP RAND_NUM, 0AH
  JE DISPLAY_HTEN
   
  CMP RAND_NUM, 0BH
  JE DISPLAy_HJ
   
  CMP RAND_NUM, 0CH
  JE DISPLAY_HQ
   
  CMP RAND_NUM, 0
  JE DISPLAY_HK
;                       CLUBS
;------------------------------------------------------------------- 
  CMP RAND_NUM, 0DH
  JE DISPLAY_C_ACE1
   
  CMP RAND_NUM, 0EH
  JE DISPLAY_CTWO
   
  CMP RAND_NUM, 0FH
  JE DISPLAY_CTHREE
   
  CMP RAND_NUM, 10H
  JE DISPLAY_CFOUR
   
  CMP RAND_NUM, 11H
  JE DISPLAY_CFIVE
   
  CMP RAND_NUM, 12H
  JE DISPLAY_CSIX
   
  CMP RAND_NUM, 13H
  JE DISPLAY_CSEVEN
   
  CMP RAND_NUM, 14H
  JE DISPLAY_CEIGHT
   
  CMP RAND_NUM, 15H
  JE DISPLAY_CNINE
   
  CMP RAND_NUM, 16H
  JE DISPLAY_CTEN
   
  CMP RAND_NUM, 17H
  JE DISPLAY_CJ
   
  CMP RAND_NUM, 18H
  JE DISPLAY_CQ
   
  CMP RAND_NUM, 19H
  JE DISPLAY_CK
;                       SPADES
;------------------------------------------------------------------- 
  CMP RAND_NUM, 1AH
  JE DISPLAY_S_ACE1
   
  CMP RAND_NUM, 1BH
  JE DISPLAY_STWO
   
  CMP RAND_NUM, 1CH
  JE DISPLAY_STHREE
   
  CMP RAND_NUM, 1DH
  JE DISPLAY_SFOUR
   
  CMP RAND_NUM, 1EH
  JE DISPLAY_SFIVE
   
  CMP RAND_NUM, 1FH
  JE DISPLAY_SSIX
   
  CMP RAND_NUM, 20H 
  JE DISPLAY_SSEVEN
   
  CMP RAND_NUM, 21H
  JE DISPLAY_SEIGHT
   
  CMP RAND_NUM, 22H
  JE DISPLAY_SNINE
   
  CMP RAND_NUM, 23H
  JE DISPLAY_STEN
   
  CMP RAND_NUM, 24H
  JE DISPLAY_SJ
   
  CMP RAND_NUM, 25H
  JE DISPLAY_SQ
   
  CMP RAND_NUM, 26H
  JE DISPLAY_SK
;               DIAMOND
;----------------------------------------------
  CMP RAND_NUM, 27H
  JE DISPLAY_D_ACE1
   
  CMP RAND_NUM, 28H
  JE DISPLAY_DTWO
   
  CMP RAND_NUM, 29H
  JE DISPLAY_DTHREE
   
  CMP RAND_NUM, 2AH
  JE DISPLAY_DFOUR
   
  CMP RAND_NUM, 2BH
  JE DISPLAY_DFIVE
   
  CMP RAND_NUM, 2CH
  JE DISPLAY_DSIX
   
  CMP RAND_NUM, 2DH
  JE DISPLAY_DSEVEN
   
  CMP RAND_NUM, 2EH
  JE DISPLAY_DEIGHT
   
  CMP RAND_NUM, 2FH
  JE DISPLAY_DNINE
   
  CMP RAND_NUM, 30H
  JE DISPLAY_DTEN
   
  CMP RAND_NUM, 31H
  JE DISPLAY_DJ
   
  CMP RAND_NUM, 32H
  JE DISPLAY_DQ
   
  CMP RAND_NUM, 33H
  JE DISPLAY_DK



  givecard_ret:
  RET 

  display_H_ace1:
  jmp display_H_ace

  display_Htwo:
  jmp display_H2

  display_Hthree:
  jmp display_H3

  display_Hfour:
  jmp display_H4

  display_Hfive:
  jmp display_H5

  display_Hsix:
  jmp display_H6

  display_Hseven:
  jmp display_H7

  display_Height:
  jmp display_H8

  display_Hnine:
  jmp display_H9

  display_Hten:
  jmp display_H10

  display_Hj:
  jmp display_Hjack

  display_Hq:
  jmp display_Hqueen

  display_Hk:
  jmp display_Hking

  DISPLAY_S_ace1:
  jmp DISPLAY_S_ace

  DISPLAY_Stwo:
  jmp DISPLAY_S2

  DISPLAY_Sthree:
  jmp DISPLAY_S3

  DISPLAY_Sfour:
  jmp DISPLAY_S4

  DISPLAY_Sfive:
  jmp DISPLAY_S5

  DISPLAY_Ssix:
  jmp DISPLAY_S6

  DISPLAY_Sseven:
  jmp DISPLAY_S7

  DISPLAY_Seight:
  jmp DISPLAY_S8

  DISPLAY_Snine:
  jmp DISPLAY_S9

  DISPLAY_Sten:
  jmp DISPLAY_S10

  DISPLAY_Sj:
  jmp DISPLAY_Sjack

  DISPLAY_Sq:
  jmp DISPLAY_Squeen

  DISPLAY_Sk:
  jmp DISPLAY_Sking

    DISPLAY_C_ace1:
  jmp DISPLAY_C_ace

  DISPLAY_Ctwo:
  jmp DISPLAY_C2

  DISPLAY_Cthree:
  jmp DISPLAY_C3

  DISPLAY_Cfour:
  jmp DISPLAY_C4

  DISPLAY_Cfive:
  jmp DISPLAY_C5

  DISPLAY_Csix:
  jmp DISPLAY_C6

  DISPLAY_Cseven:
  jmp DISPLAY_C7

  DISPLAY_Ceight:
  jmp DISPLAY_C8

  DISPLAY_Cnine:
  jmp DISPLAY_C9

  DISPLAY_Cten:
  jmp DISPLAY_C10

  DISPLAY_Cj:
  jmp DISPLAY_Cjack

  DISPLAY_Cq:
  jmp DISPLAY_Cqueen

  DISPLAY_Ck:
  jmp DISPLAY_Cking

    DISPLAY_D_ace1:
  jmp DISPLAY_D_ace

  DISPLAY_Dtwo:
  jmp DISPLAY_D2

  DISPLAY_Dthree:
  jmp DISPLAY_D3

  DISPLAY_Dfour:
  jmp DISPLAY_D4

  DISPLAY_Dfive:
  jmp DISPLAY_D5

  DISPLAY_Dsix:
  jmp DISPLAY_D6

  DISPLAY_Dseven:
  jmp DISPLAY_D7

  DISPLAY_Deight:
  jmp DISPLAY_D8

  DISPLAY_Dnine:
  jmp DISPLAY_D9

  DISPLAY_Dten:
  jmp DISPLAY_D10

  DISPLAY_Dj:
  jmp DISPLAY_Djack

  DISPLAY_Dq:
  jmp DISPLAY_Dqueen

  DISPLAY_Dk:
  jmp DISPLAY_Dking

  GIVE_CARD ENDP
  ;------------------------------------------------------------
  DISPLAY_H6:
  ADD SCOREHOLDER, 6


  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, H_SIX
  CALL DISPLAY_STR

  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, H_SIX1
  CALL DISPLAY_STR

  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, H_SIX2
  CALL DISPLAY_STR

  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, H_SIX3
  CALL DISPLAY_STR

  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, H_SIX4
  CALL DISPLAY_STR

  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, H_SIX5
  CALL DISPLAY_STR

  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, H_SIX6
  CALL DISPLAY_STR

  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, H_SIX7
  CALL DISPLAY_STR

  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, H_SIX8
  CALL DISPLAY_STR

  SUB TEMP_LOC2, 8

  JMP givecard_ret
  ;------------------------------------------------------------
  DISPLAY_H7:
  ADD SCOREHOLDER, 7

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, H_SEVEN
  CALL DISPLAY_STR


  INC TEMP_LOC2
  

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, H_SEVEN1
  CALL DISPLAY_STR

  INC TEMP_LOC2

  

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, H_SEVEN2
  CALL DISPLAY_STR

  INC TEMP_LOC2
  

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, H_SEVEN3
  CALL DISPLAY_STR
  INC TEMP_LOC2



  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, H_SEVEN4
  CALL DISPLAY_STR
  INC TEMP_LOC2
  
  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, H_SEVEN5
  CALL DISPLAY_STR
  INC TEMP_LOC2


  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, H_SEVEN6
  CALL DISPLAY_STR
  INC TEMP_LOC2


  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, H_SEVEN7
  CALL DISPLAY_STR
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, H_SEVEN8
  CALL DISPLAY_STR

  SUB TEMP_LOC2, 8


  JMP givecard_ret
  ;------------------------------------------------------------
  DISPLAY_H8:
  ADD SCOREHOLDER, 8

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, H_EIGHT
  CALL DISPLAY_STR

  INC TEMP_LOC2


  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, H_EIGHT1
  CALL DISPLAY_STR
  INC TEMP_LOC2

  
  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, H_EIGHT2
  CALL DISPLAY_STR
  INC TEMP_LOC2

  
  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 


  LEA DX, H_EIGHT3
  CALL DISPLAY_STR
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, H_EIGHT4
  CALL DISPLAY_STR
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, H_EIGHT5
  CALL DISPLAY_STR
  INC TEMP_LOC2


  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, H_EIGHT6
  CALL DISPLAY_STR
  INC TEMP_LOC2  

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, H_EIGHT7
  CALL DISPLAY_STR
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, H_EIGHT8
  CALL DISPLAY_STR

  SUB TEMP_LOC2, 8

  JMP givecard_ret
  ;------------------------------------------------------------
  DISPLAY_H9:
  ADD SCOREHOLDER, 9


  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, H_NINE
  CALL DISPLAY_STR
  INC TEMP_LOC2


  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR  
  LEA DX, H_NINE1
  CALL DISPLAY_STR
  
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 
  LEA DX, H_NINE2
  CALL DISPLAY_STR
  
  INC TEMP_LOC2
  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 
  LEA DX, H_NINE3
  CALL DISPLAY_STR
  
  INC TEMP_LOC2
  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 
  LEA DX, H_NINE4
  CALL DISPLAY_STR
  
  INC TEMP_LOC2
  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 
  LEA DX, H_NINE5
  CALL DISPLAY_STR
  
  INC TEMP_LOC2
  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, H_NINE6
  CALL DISPLAY_STR
  
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 
  LEA DX, H_NINE7
  CALL DISPLAY_STR
  
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 
  LEA DX, H_NINE8
  CALL DISPLAY_STR

  SUB TEMP_LOC2, 8


  JMP givecard_ret
  ;------------------------------------------------------------
  DISPLAY_H10:
  ADD SCOREHOLDER, 10



  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, H_TEN
  CALL DISPLAY_STR
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, H_TEN1
  CALL DISPLAY_STR
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, H_TEN2
  CALL DISPLAY_STR
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, H_TEN3
  CALL DISPLAY_STR
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, H_TEN4
  CALL DISPLAY_STR
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, H_TEN5
  CALL DISPLAY_STR
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, H_TEN6
  CALL DISPLAY_STR
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, H_TEN7
  CALL DISPLAY_STR
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, H_TEN8
  CALL DISPLAY_STR

  SUB TEMP_LOC2, 8

  JMP givecard_ret
  ;------------------------------------------------------------
  DISPLAY_HJACK:
  ADD SCOREHOLDER, 10

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR
  
  LEA DX, H_JACK
  CALL DISPLAY_STR
  INC TEMP_LOC2
  

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR
  
  LEA DX, H_JACK1
  CALL DISPLAY_STR
  INC TEMP_LOC2
  

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR
  
  LEA DX, H_JACK2
  CALL DISPLAY_STR
  INC TEMP_LOC2


  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, H_JACK3
  CALL DISPLAY_STR
  INC TEMP_LOC2
  
  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, H_JACK4
  CALL DISPLAY_STR
  INC TEMP_LOC2


  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, H_JACK5
  CALL DISPLAY_STR
  INC TEMP_LOC2
  
  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, H_JACK6
  CALL DISPLAY_STR
  INC TEMP_LOC2
  
  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, H_JACK7
  CALL DISPLAY_STR
  INC TEMP_LOC2
  
  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, H_JACK8
  CALL DISPLAY_STR

  SUB TEMP_LOC2, 8


  JMP givecard_ret
  ;------------------------------------------------------------
  DISPLAY_HQUEEN:
  ADD SCOREHOLDER, 10


  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, H_QUEEN
  CALL DISPLAY_STR

  INC TEMP_LOC2



  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR


  LEA DX, H_QUEEN1
  CALL DISPLAY_STR

  INC TEMP_LOC2



  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, H_QUEEN2
  CALL DISPLAY_STR

  INC TEMP_LOC2


  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, H_QUEEN3
  CALL DISPLAY_STR

  INC TEMP_LOC2


  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, H_QUEEN4
  CALL DISPLAY_STR

  INC TEMP_LOC2


  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, H_QUEEN5
  CALL DISPLAY_STR

  INC TEMP_LOC2



  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, H_QUEEN6
  CALL DISPLAY_STR

  INC TEMP_LOC2



  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, H_QUEEN7
  CALL DISPLAY_STR

  INC TEMP_LOC2


  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, H_QUEEN8
  CALL DISPLAY_STR

  SUB TEMP_LOC2, 8

  JMP givecard_ret
  ;------------------------------------------------------------
  DISPLAY_HKING:
  ADD SCOREHOLDER, 10


  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, H_KING
  CALL DISPLAY_STR
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, H_KING1
  CALL DISPLAY_STR
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, H_KING2
  CALL DISPLAY_STR
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, H_KING3
  CALL DISPLAY_STR
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, H_KING4
  CALL DISPLAY_STR
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, H_KING5
  CALL DISPLAY_STR
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, H_KING6
  CALL DISPLAY_STR
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, H_KING7
  CALL DISPLAY_STR
  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, H_KING8
  CALL DISPLAY_STR
  
  SUB TEMP_LOC2, 8


  JMP givecard_ret
  ;------------------------------------------------------------

  ;------------------------------------------------------------
  DISPLAY_C_ACE:
  ADD SCOREHOLDER, 11

  MOV DL, TEMP_LOC 
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 
  LEA DX, C_ACE
  CALL DISPLAY_STR


  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 
  LEA DX, C_ACE1
  CALL DISPLAY_STR


  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR
  LEA DX, C_ACE2
  CALL DISPLAY_STR

  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR
  LEA DX, C_ACE3
  CALL DISPLAY_STR

  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR
  LEA DX, C_ACE4
  CALL DISPLAY_STR

  INC TEMP_LOC2

  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2

  CALL _SET_CURSOR
  LEA DX, C_ACE5
  CALL DISPLAY_STR

  INC TEMP_LOC2


  MOV DL, TEMP_LOC 
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR

  LEA DX, C_ACE6
  CALL DISPLAY_STR

  INC TEMP_LOC2


  MOV DL, TEMP_LOC
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, C_ACE7
  CALL DISPLAY_STR

  INC TEMP_LOC2

  MOV DL, TEMP_LOC 
  MOV DH, TEMP_LOC2
  CALL _SET_CURSOR 

  LEA DX, C_ACE8
  CALL DISPLAY_STR

  SUB TEMP_LOC2, 7


  JMP givecard_ret
  ;------------------------------------------------------------
  DISPLAY_C2:
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
  DISPLAY_C3:
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
  DISPLAY_C4:
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
  DISPLAY_C5:
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
  ;-------------------------------------------------------------------------------------------------------------
  DISPLAY_C6:
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
  DISPLAY_C7:
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
  DISPLAY_C8:
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
  DISPLAY_C9:
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
  DISPLAY_C10:
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
  DISPLAY_CJACK:
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
  DISPLAY_CQUEEN:
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
  DISPLAY_CKING:
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
  MOV AH, 09H           ;used to shorten code by 1 line per print
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

  MOV AH, 10H   ;read input of player
  INT 16H
  MOV KBINPUT1, AL  ;display input in real time
  RET
  ACCEPT_STR1 ENDP

  ;------------------------------------------------------------
  _TERMINATE PROC NEAR
  MOV   AX, 0600H       ;clear screen
  MOV   BH, 02H         ; green foreground with black background
  MOV   CX, 0000H       ; index (0,0)
  MOV   DX, 184FH       ; to index (24, 79)
  INT   10H
  MOV   DL, 20          ;set cursor so that the message would be at the center        
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