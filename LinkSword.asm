# Name: Adam Pena
# Date: 11/14/2021
# Description: File that draws Link's sword

.eqv SLVR 0x00f5f8f7
.eqv BLUE 0x006a8db2
.eqv BLKBLUE 0x00363835

DRAW_LINK_SWORD: 

   addi $sp, $sp, -4
   sw $ra, 0($sp)

.macro pushColor (%x)
      li $a0, %x
      add $sp, $sp, -4
      sw $a0, 0($sp)
   .end_macro
   
   pushColor BLUE
   li $a0, 56
   li $a1, 77
   li $a2, 4
   li $a3, 2
   jal RECTRC
   
   li $a0, 54
   li $a1, 79
   li $a2, 2
   li $a3, 2
   jal RECTRC
   
   addi $sp, $sp, 4
   
   pushColor BLKBLUE
   li $a0, 58
   li $a1, 77
   li $a2, 4
   li $a3, 2
   jal RECTRC
   
   li $a0, 54
   li $a1, 81
   li $a2, 2
   li $a3, 4
   jal RECTRC
   
   addi $sp, $sp, 4
   
   pushColor SLVR
   li $a0, 54
   li $a1, 77
   li $a2, 2
   li $a3, 2
   jal RECTRC
   
   li $a0, 48
   li $a1, 77
   li $a2, 4
   li $a3, 6
   jal RECTRC
   
   li $a0, 40
   li $a1, 79
   li $a2, 4
   li $a3, 8
   jal RECTRC
   
   li $a0, 36
   li $a1, 81
   li $a2, 4
   li $a3, 6
   jal RECTRC
   
   li $a0, 34
   li $a1, 83
   li $a2, 2
   li $a3, 2
   jal RECTRC
   
   addi $sp, $sp, 4
   
   lw $ra, 0($sp)
   
   jr $ra
   