# Name: Adam Pena
# Date: 11/14/2021
# Description: File that draws Link's explosions

.eqv SHINE 0x00f2f6f5
.eqv BLU 0x0084d1fb
.eqv DBLU 0x007392fa

DRAW_LINK_EXPLOSIONS:

   addi $sp, $sp, -4
   sw $ra, 0($sp)

.macro pushColor (%x)
      li $a0, %x
      add $sp, $sp, -4
      sw $a0, 0($sp)
   .end_macro
   
   # Sparkles
   pushColor SHINE
   li $a0, 34
   li $a1, 89
   li $a2, 2
   li $a3, 2
   jal RECTRC
   
   li $a0, 62
   li $a1, 11
   li $a2, 2
   li $a3, 2
   jal RECTRC
   
   li $a0, 46
   li $a1, 15
   li $a2, 2
   li $a3, 2
   jal RECTRC
   
   addi $sp, $sp, 4
   
   pushColor BLU 
   
   li $a0, 46
   li $a1, 13
   li $a2, 2
   li $a3, 2
   jal RECTRC
   
   li $a0, 44
   li $a1, 15
   li $a2, 2
   li $a3, 2
   jal RECTRC
   
   li $a0, 46
   li $a1, 17
   li $a2, 2
   li $a3, 2
   jal RECTRC
   
   li $a0, 48
   li $a1, 15
   li $a2, 2
   li $a3, 2
   jal RECTRC
   
   addi $sp, $sp, 4
   
   pushColor DBLU
   
   li $a0, 46
   li $a1, 11
   li $a2, 2
   li $a3, 2
   jal RECTRC
   
   li $a0, 42
   li $a1, 15
   li $a2, 2
   li $a3, 2
   jal RECTRC
   
   li $a0, 46
   li $a1, 19
   li $a2, 2
   li $a3, 2
   jal RECTRC
   
   li $a0, 50
   li $a1, 15
   li $a2, 2
   li $a3, 2
   jal RECTRC
   
   addi $sp, $sp, 4
   
   # Explosion 1
   
   pushColor SHINE
   li $a0, 46
   li $a1, 15
   li $a2, 2
   li $a3, 2
   jal RECTRC
   
   addi $sp, $sp, 4
   
   pushColor BLU 
   
   li $a0, 46
   li $a1, 13
   li $a2, 2
   li $a3, 2
   jal RECTRC
   
   li $a0, 44
   li $a1, 15
   li $a2, 2
   li $a3, 2
   jal RECTRC
   
   li $a0, 46
   li $a1, 17
   li $a2, 2
   li $a3, 2
   jal RECTRC
   
   li $a0, 48
   li $a1, 15
   li $a2, 2
   li $a3, 2
   jal RECTRC
   
   addi $sp, $sp, 4
   
   pushColor DBLU
   
   li $a0, 46
   li $a1, 11
   li $a2, 2
   li $a3, 2
   jal RECTRC
   
   li $a0, 42
   li $a1, 15
   li $a2, 2
   li $a3, 2
   jal RECTRC
   
   li $a0, 46
   li $a1, 19
   li $a2, 2
   li $a3, 2
   jal RECTRC
   
   li $a0, 50
   li $a1, 15
   li $a2, 2
   li $a3, 2
   jal RECTRC
   
   addi $sp, $sp, 4
   
   # Explosion 2
   
   pushColor SHINE
   li $a0, 30
   li $a1, 37
   li $a2, 2
   li $a3, 2
   jal RECTRC
   
   addi $sp, $sp, 4
   
   pushColor BLU
   li $a0, 30
   li $a1, 35
   li $a2, 2
   li $a3, 2
   jal RECTRC
   
   li $a0, 28
   li $a1, 37
   li $a2, 2
   li $a3, 2
   jal RECTRC
   
   li $a0, 30
   li $a1, 39
   li $a2, 2
   li $a3, 2
   jal RECTRC
   
   li $a0, 32
   li $a1, 37
   li $a2, 2
   li $a3, 2
   jal RECTRC
   
   li $a0, 30
   li $a1, 33
   li $a2, 2
   li $a3, 2
   jal RECTRC
   
   li $a0, 26
   li $a1, 37
   li $a2, 2
   li $a3, 2
   jal RECTRC
   
   li $a0, 30
   li $a1, 41
   li $a2, 2
   li $a3, 2
   jal RECTRC
   
   li $a0, 34
   li $a1, 37
   li $a2, 2
   li $a3, 2
   jal RECTRC
   
   addi $sp, $sp, 4
   
   pushColor DBLU
   li $a0, 30
   li $a1, 31
   li $a2, 2
   li $a3, 2
   jal RECTRC
   
   li $a0, 24
   li $a1, 37
   li $a2, 2
   li $a3, 2
   jal RECTRC
   
   li $a0, 30
   li $a1, 43
   li $a2, 2
   li $a3, 2
   jal RECTRC
   
   li $a0, 36
   li $a1, 37
   li $a2, 2
   li $a3, 2
   jal RECTRC
   
   addi $sp, $sp, 4
   
   # Explosion 3
   pushColor SHINE
   li $a0, 22
   li $a1, 59
   li $a2, 4
   li $a3, 4
   jal RECTRC
   
   li $a0, 24
   li $a1, 55
   li $a2, 2
   li $a3, 2
   jal RECTRC
   
   li $a0, 22
   li $a1, 57
   li $a2, 2
   li $a3, 4
   jal RECTRC
   
   li $a0, 20
   li $a1, 59
   li $a2, 4
   li $a3, 2
   jal RECTRC
   
   li $a0, 18
   li $a1, 59
   li $a2, 2
   li $a3, 2
   jal RECTRC
   
   li $a0, 22
   li $a1, 63
   li $a2, 2
   li $a3, 4
   jal RECTRC
   
   li $a0, 22
   li $a1, 65
   li $a2, 2
   li $a3, 2
   jal RECTRC
   
   li $a0, 26
   li $a1, 59
   li $a2, 4
   li $a3, 2
   jal RECTRC
   
   li $a0, 28
   li $a1, 61
   li $a2, 2
   li $a3, 2
   jal RECTRC
   
   addi $sp, $sp, 4
   
   pushColor BLU
   li $a0, 20
   li $a1, 53
   li $a2, 2
   li $a3, 6
   jal RECTRC
   
   li $a0, 22
   li $a1, 55
   li $a2, 2
   li $a3, 2
   jal RECTRC
   
   li $a0, 18
   li $a1, 57
   li $a2, 2
   li $a3, 4
   jal RECTRC
   
   li $a0, 16
   li $a1, 59
   li $a2, 6
   li $a3, 2
   jal RECTRC
   
   li $a0, 18
   li $a1, 61
   li $a2, 2
   li $a3, 2
   jal RECTRC
   
   li $a0, 20
   li $a1, 63
   li $a2, 4
   li $a3, 2
   jal RECTRC
   
   li $a0, 22
   li $a1, 67
   li $a2, 2
   li $a3, 6
   jal RECTRC
   
   li $a0, 24
   li $a1, 65
   li $a2, 2
   li $a3, 2
   jal RECTRC
   
   li $a0, 26
   li $a1, 63
   li $a2, 2
   li $a3, 4
   jal RECTRC
   
   li $a0, 30
   li $a1, 57
   li $a2, 6
   li $a3, 2
   jal RECTRC
   
   li $a0, 28
   li $a1, 59
   li $a2, 2
   li $a3, 2
   jal RECTRC
   
   li $a0, 26
   li $a1, 55
   li $a2, 4
   li $a3, 2
   jal RECTRC
   
   addi $sp, $sp, 4
   
   lw $ra, 0($sp)
   
   jr $ra