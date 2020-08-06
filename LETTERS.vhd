LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
--==========================================================================================
PACKAGE LETTERS IS

CONSTANT	MAX_INDEX_CHAR	:	NATURAL:=(63);
CONSTANT	MAXCHAR			:	NATURAL:=(8*MAX_INDEX_CHAR);
CONSTANT MAX_ROM			:	NATURAL:=31;

TYPE	DIGIT_ROM	IS	ARRAY	(0 TO 15,0 TO 7)	OF	STD_LOGIC;
TYPE	LETTERS_ROM	IS	ARRAY	(0 TO MAX_ROM)	OF	DIGIT_ROM;
TYPE	LETTERS_MANAGE	IS	ARRAY	(0 TO MAX_INDEX_CHAR)	OF	NATURAL RANGE 0 TO MAX_ROM;



SIGNAL	MNGLETTER	:	LETTERS_MANAGE;
SIGNAL	CHARBIT		:	STD_LOGIC;
SIGNAL	CHARBIT_ACT	:	STD_LOGIC;
SIGNAL	MYLETTER		:	DIGIT_ROM;
SIGNAL	POSLETTER	:	NATURAL RANGE 0 TO 127;
SIGNAL   CNTDIGITH	:	NATURAL RANGE 0 TO   7;
SIGNAL   CNTDIGITV	:	NATURAL RANGE 0 TO  15;

SIGNAL	VALUE_LETTER:	NATURAL	RANGE	0 TO MAX_INDEX_CHAR;



CONSTANT	CARACTER	:	LETTERS_ROM := (
("00000000",
"00000000",
"01111100",
"11000110",
"11001110",
"11011110",
"11010110",
"11110110",
"11100110",
"11000110",
"01111100",
"00000000",
"00000000",
"00000000",
"00000000",
"00000000"),
--------------
("00000000",
"00000000",
"00010000",
"00110000",
"11110000",
"00110000",
"00110000",
"00110000",
"00110000",
"00110000",
"11111100",
"00000000",
"00000000",
"00000000",
"00000000",
"00000000"),
--------------
("00000000",
"00000000",
"01111000",
"11001100",
"11001100",
"00001100",
"00011000",
"00110000",
"01100000",
"11001100",
"11111100",
"00000000",
"00000000",
"00000000",
"00000000",
"00000000"),
--------------
("00000000",
"00000000",
"01111000",
"11001100",
"00001100",
"00001100",
"00111000",
"00001100",
"00001100",
"11001100",
"01111000",
"00000000",
"00000000",
"00000000",
"00000000",
"00000000"),
--------------
("00000000",
"00000000",
"00001100",
"00011100",
"00111100",
"01101100",
"11001100",
"11111110",
"00001100",
"00001100",
"00011110",
"00000000",
"00000000",
"00000000",
"00000000",
"00000000"),
--------------
("00000000",
"00000000",
"11111100",
"11000000",
"11000000",
"11000000",
"11111000",
"00001100",
"00001100",
"11001100",
"01111000",
"00000000",
"00000000",
"00000000",
"00000000",
"00000000"),
--------------
("00000000",
"00000000",
"00111000",
"01100000",
"11000000",
"11000000",
"11111000",
"11001100",
"11001100",
"11001100",
"01111000",
"00000000",
"00000000",
"00000000",
"00000000",
"00000000"),
--------------
("00000000",
"00000000",
"11111110",
"11000110",
"11000110",
"00000110",
"00001100",
"00011000",
"00110000",
"00110000",
"00110000",
"00000000",
"00000000",
"00000000",
"00000000",
"00000000"),
--------------
("00000000",
"00000000",
"01111000",
"11001100",
"11001100",
"11001100",
"01111000",
"11001100",
"11001100",
"11001100",
"01111000",
"00000000",
"00000000",
"00000000",
"00000000",
"00000000"),
--------------
("00000000",
"00000000",
"01111000",
"11001100",
"11001100",
"11001100",
"01111100",
"00011000",
"00011000",
"00110000",
"01110000",
"00000000",
"00000000",
"00000000",
"00000000",
"00000000"),
--------------
--------------
--------------
--------------
--------------LETTERS
--------------L(10)
("00000000",
"00000000",
"11110000",
"01100000",
"01100000",
"01100000",
"01100000",
"01100010",
"01100110",
"01100110",
"11111110",
"00000000",
"00000000",
"00000000",
"00000000",
"00000000"),
--------------O(11)

("00000000",
"00000000",
"00111000",
"01101100",
"11000110",
"11000110",
"11000110",
"11000110",
"11000110",
"01101100",
"00111000",
"00000000",
"00000000",
"00000000",
"00000000",
"00000000"),
--------------A(12)
("00000000",
"00000000",
"00110000",
"01111000",
"11001100",
"11001100",
"11001100",
"11111100",
"11001100",
"11001100",
"11001100",
"00000000",
"00000000",
"00000000",
"00000000",
"00000000"),
--------------D(13)
("00000000",
"00000000",
"11111000",
"01101100",
"01100110",
"01100110",
"01100110",
"01100110",
"01100110",
"01101100",
"11111000",
"00000000",
"00000000",
"00000000",
"00000000",
"00000000"),

--------------I(14)
("00000000",
"00000000",
"01111000",
"00110000",
"00110000",
"00110000",
"00110000",
"00110000",
"00110000",
"00110000",
"01111000",
"00000000",
"00000000",
"00000000",
"00000000",
"00000000"),

--------------N (15)
("00000000",
"00000000",
"11000110",
"11000110",
"11100110",
"11110110",
"11111110",
"11011110",
"11001110",
"11000110",
"11000110",
"00000000",
"00000000",
"00000000",
"00000000",
"00000000"),




--------------G
("00000000",
"00000000",
"00111100",
"01100110",
"11000110",
"11000000",
"11000000",
"11001110",
"11000110",
"01100110",
"00111110",
"00000000",
"00000000",
"00000000",
"00000000",
"00000000"),
---------------ESPACIO (17)

("00000000",
"00000000",
"00000000",
"00000000",
"00000000",
"00000000",
"00000000",
"00000000",
"00000000",
"00000000",
"00000000",
"00000000",
"00000000",
"00000000",
"00000000",
"00000000"),


---------------P (18)

("00000000",
"00000000",
"11111100",
"01100110",
"01100110",
"01100110",
"01111100",
"01100000",
"01100000",
"01100000",
"11110000",
"00000000",
"00000000",
"00000000",
"00000000",
"00000000"),

---------------C (19)

("00000000",
"00000000",
"00111100",
"01100110",
"11000110",
"11000000",
"11000000",
"11000000",
"11000110",
"01100110",
"00111100",
"00000000",
"00000000",
"00000000",
"00000000",
"00000000"),


---------------E (20)
("00000000",
"00000000",
"11111110",
"01100010",
"01100000",
"01100100",
"01111100",
"01100100",
"01100000",
"01100010",
"11111110",
"00000000",
"00000000",
"00000000",
"00000000",
"00000000"),

-------------- B(21)
("00000000",
"00000000",
"11111100",
"01100110",
"01100110",
"01100110",
"01111100",
"01100110",
"01100110",
"01100110",
"11111100",
"00000000",
"00000000",
"00000000",
"00000000",
"00000000"),
-------------- Y (22)
("00000000",
"00000000",
"11001100",
"11001100",
"11001100",
"11001100",
"01111000",
"00110000",
"00110000",
"00110000",
"01111000",
"00000000",
"00000000",
"00000000",
"00000000",
"00000000"),
-------------- T(23)
("00000000",
"00000000",
"11111100",
"10110100",
"00110000",
"00110000",
"00110000",
"00110000",
"00110000",
"00110000",
"01111000",
"00000000",
"00000000",
"00000000",
"00000000",
"00000000"),

-------------- S(24)
("00000000",
"00000000",
"01111000",
"11001100",
"11001100",
"11000000",
"01110000",
"00011000",
"11001100",
"11001100",
"01111000",
"00000000",
"00000000",
"00000000",
"00000000",
"00000000"),

-------------- V(25)
("00000000",
"00000000",
"11001100",
"11001100",
"11001100",
"11001100",
"11001100",
"11001100",
"11001100",
"01111000",
"00110000",
"00000000",
"00000000",
"00000000",
"00000000",
"00000000"),

-------------- R(26)
("00000000",
"00000000",
"11111100",
"01100110",
"01100110",
"01100110",
"01111100",
"01101100",
"01100110",
"01100110",
"11100110",
"00000000",
"00000000",
"00000000",
"00000000",
"00000000"),
-------------- M(27)
("00000000",
"00000000",
"11000110",
"11101110",
"11111110",
"11111110",
"11010110",
"11000110",
"11000110",
"11000110",
"11000110",
"00000000",
"00000000",
"00000000",
"00000000",
"00000000"),

-------------- K(28)
("00000000",
"00000000",
"11100110",
"01100110",
"01101100",
"01101100",
"01111000",
"01101100",
"01101100",
"01100110",
"11100110",
"00000000",
"00000000",
"00000000",
"00000000",
"00000000"),

-------------- Z(29)
("00000000",
"00000000",
"11111110",
"11001110",
"10011000",
"00011000",
"00110000",
"01100000",
"01100010",
"11000110",
"11111110",
"00000000",
"00000000",
"00000000",
"00000000",
"00000000"),

-------------- X(30)
("00000000",
"00000000",
"11001100",
"11001100",
"11001100",
"01111000",
"00110000",
"01111000",
"11001100",
"11001100",
"11001100",
"00000000",
"00000000",
"00000000",
"00000000",
"00000000"),

-------------- **(31)
("00000000",
"00010000",
"00111000",
"01101100",
"11000110",
"00000000",
"00000000",
"00000000",
"00000000",
"00000000",
"00000000",
"00000000",
"00000000",
"00000000",
"00000000",
"00000000")
);
END LETTERS;

