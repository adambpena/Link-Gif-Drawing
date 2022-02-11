# Name: Adam Pena
# Date: 11/14/2021
# Description: File that draws Link's head

.eqv LG 0x007fc02e
.eqv G 0x0074b317
.eqv DG 0x004d9106
.eqv P 0x00e661b3
.eqv DP 0x00d75da8
.eqv BL 0x00252625
.eqv LT 0x00f29f64
.eqv T 0x00ba661c
.eqv OW 0x00f8faf6
.eqv GY 0x0f8faf6
.eqv O 0x00fb7600
.eqv DO 0x00d06b0a
   
   DRAW_LINK_HEAD:
  	
     addi $sp, $sp, -4
     sw $ra, 0($sp)
   
   
   # Macro to be used with RECTRC for easy color pushing
   .macro pushColor (%x)
      li $a0, %x
      add $sp, $sp, -4
      sw $a0, 0($sp)
   .end_macro
   
   # Right Ear
   pushColor BL
   li $a0, 60
   li $a1, 73
   li $a2, 2
   li $a3, 2
   jal RECTRC
   
   li $a0, 50
   li $a1, 75
   li $a2, 2
   li $a3, 12
   jal RECTRC
   
   li $a0, 50
   li $a1, 71
   li $a2, 4
   li $a3, 2
   jal RECTRC
   
   li $a0, 50
   li $a1, 71
   li $a2, 2
   li $a3, 4
   jal RECTRC
   
   li $a0, 54
   li $a1, 69
   li $a2, 4
   li $a3, 2
   jal RECTRC
   
   li $a0, 54
   li $a1, 69
   li $a2, 2
   li $a3, 4
   jal RECTRC
   
   li $a0, 58
   li $a1, 71
   li $a2, 2
   li $a3, 2
   jal RECTRC
   
   li $a0, 60
   li $a1, 69
   li $a2, 2
   li $a3, 2
   jal RECTRC
   
   addi $sp, $sp, 4
   
   pushColor T
   li $a0, 56
   li $a1, 73
   li $a2, 2
   li $a3, 4
   jal RECTRC
   
   addi $sp, $sp, 4
   
   pushColor LT
   li $a0, 52
   li $a1, 73
   li $a2, 2
   li $a3, 4
   jal RECTRC
   
   li $a0, 56
   li $a1, 71
   li $a2, 2
   li $a3, 2
   jal RECTRC
   
   addi $sp, $sp, 4
   
   # Left Ear
   pushColor BL
   li $a0, 52
   li $a1, 43
   li $a2, 2
   li $a3, 8
   jal RECTRC
   
   li $a0, 50
   li $a1, 45
   li $a2, 2
   li $a3, 2
   jal RECTRC
   
   li $a0, 52
   li $a1, 47
   li $a2, 2
   li $a3, 4
   jal RECTRC
   
   li $a0, 58
   li $a1, 47
   li $a2, 2
   li $a3, 2
   jal RECTRC
   
   li $a0, 56
   li $a1, 49
   li $a2, 2
   li $a3, 2
   jal RECTRC
   
   li $a0, 60
   li $a1, 49
   li $a2, 2
   li $a3, 2
   jal RECTRC
   
   li $a0, 60
   li $a1, 45
   li $a2, 2
   li $a3, 2
   jal RECTRC
   
   addi $sp, $sp, 4
   
   pushColor T
   li $a0, 56
   li $a1, 45
   li $a2, 2
   li $a3, 4
   jal RECTRC
   
   addi $sp, $sp, 4
   
   pushColor LT
   li $a0, 52
   li $a1, 45
   li $a2, 2
   li $a3, 4
   jal RECTRC
   
   li $a0, 56
   li $a1, 47
   li $a2, 2
   li $a3, 2
   jal RECTRC
   
   addi $sp, $sp, 4
   
   # Face
   pushColor BL
   li $a0, 58
   li $a1, 51
   li $a2, 18
   li $a3, 2
   jal RECTRC
   
   li $a0, 62
   li $a1, 47
   li $a2, 2
   li $a3, 2
   jal RECTRC
   
    li $a0, 64
   li $a1, 49
   li $a2, 2
   li $a3, 2
   jal RECTRC
   
   li $a0, 66
   li $a1, 51
   li $a2, 2
   li $a3, 2
   jal RECTRC
   
   li $a0, 68
   li $a1, 51
   li $a2, 6
   li $a3, 2
   jal RECTRC
   
   li $a0, 70
   li $a1, 57
   li $a2, 6
   li $a3, 2
   jal RECTRC
   
   li $a0, 68
   li $a1, 63
   li $a2, 4
   li $a3, 2
  jal RECTRC
   
   li $a0, 66
   li $a1, 67
   li $a2, 4
   li $a3, 2
   jal RECTRC
   
   li $a0, 64
   li $a1, 69
   li $a2, 2
   li $a3, 2
   jal RECTRC
   
   li $a0, 62
   li $a1, 71
   li $a2, 2
   li $a3, 2
   jal RECTRC
   
   addi $sp, $sp, 4
   
   pushColor T
   li $a0, 60
   li $a1, 51
   li $a2, 2
   li $a3, 6
   jal RECTRC
   
   li $a0, 62
   li $a1, 49
   li $a2, 2
   li $a3, 2
   jal RECTRC
   
   li $a0, 66
   li $a1, 53
   li $a2, 2
   li $a3, 2
   jal RECTRC
   
   li $a0, 68
   li $a1, 57
   li $a2, 6
   li $a3, 2
   jal RECTRC
   
   li $a0, 66
   li $a1, 65
   li $a2, 2
   li $a3, 2
   jal RECTRC
   
   li $a0, 60
   li $a1, 67
   li $a2, 2
   li $a3, 6
   jal RECTRC
   
   li $a0, 62
   li $a1, 69
   li $a2, 2
   li $a3, 2
   jal RECTRC
   
   li $a0, 60
   li $a1, 71
   li $a2, 2
   li $a3, 2
   jal RECTRC
   
   li $a0, 60
   li $a1, 57
   li $a2, 6
   li $a3, 2
   jal RECTRC
   
   li $a0, 60
   li $a1, 47
   li $a2, 2
   li $a3, 2
   jal RECTRC
   
   addi $sp, $sp, 4
   
   pushColor LT 
   li $a0, 62
   li $a1, 57
   li $a2, 6
   li $a3, 6
   jal RECTRC
   
   li $a0, 66
   li $a1, 55
   li $a2, 2
   li $a3, 2
   jal RECTRC
   
   li $a0, 64
   li $a1, 53
   li $a2, 2
   li $a3, 2
   jal RECTRC
   
   li $a0, 64
   li $a1, 65
   li $a2, 2
   li $a3, 2
   jal RECTRC
   
   li $a0, 66
   li $a1, 63
   li $a2, 2
   li $a3, 2
   jal RECTRC
   
   addi $sp, $sp, 4
   
   pushColor P
   li $a0, 52
   li $a1, 49
   li $a2, 2
   li $a3, 2
   jal RECTRC
   
   li $a0, 54
   li $a1, 49
   li $a2, 6
   li $a3, 2
   jal RECTRC
   
   li $a0, 56
   li $a1, 51
   li $a2, 18
   li $a3, 2
   jal RECTRC
   
   li $a0, 54
   li $a1, 65
   li $a2, 4
   li $a3, 2
   jal RECTRC
   
   li $a0, 58
   li $a1, 49
   li $a2, 2
   li $a3, 2
   jal RECTRC
   
   li $a0, 58
   li $a1, 69
   li $a2, 2
   li $a3, 2
   jal RECTRC
   
   addi $sp, $sp, 4
   
   # Left Eye
   pushColor OW
   li $a0, 60
   li $a1, 63
   li $a2, 4
   li $a3, 2
   jal RECTRC
   
   li $a0, 60
   li $a1, 65
   li $a2, 2
   li $a3, 4
   jal RECTRC
   
   addi $sp, $sp, 4
   
   pushColor BL
   li $a0, 62
   li $a1, 63
   li $a2, 2
   li $a3, 4
   jal RECTRC
   
   addi $sp, $sp, 4
   
   # Right Eye 
   pushColor OW
   li $a0, 60
   li $a1, 53
   li $a2, 4
   li $a3, 2
   jal RECTRC  
   
   li $a0, 60
   li $a1, 53
   li $a2, 2
   li $a3, 4
   jal RECTRC 
   
   addi $sp, $sp, 4
   
   pushColor BL
   li $a0, 62
   li $a1, 55
   li $a2, 2
   li $a3, 4
   jal RECTRC 
   
   addi $sp, $sp, 4
   
   # Hat
   pushColor BL
   li $a0, 50
   li $a1, 49
   li $a2, 4
   li $a3, 2
   jal RECTRC
   
   li $a0, 48
   li $a1, 51
   li $a2, 2
   li $a3, 6
   jal RECTRC
   
   li $a0, 52
   li $a1, 51
   li $a2, 4
   li $a3, 2
   jal RECTRC
   
   li $a0, 54
   li $a1, 55
   li $a2, 10
   li $a3, 2
   jal RECTRC
   
   li $a0, 52
   li $a1, 65
   li $a2, 4
   li $a3, 2
   jal RECTRC
   
   li $a0, 50
   li $a1, 67
   li $a2, 2
   li $a3, 2
   jal RECTRC
   
   li $a0, 48
   li $a1, 69
   li $a2, 2
   li $a3, 2
   jal RECTRC
   
   li $a0, 46
   li $a1, 65
   li $a2, 4
   li $a3, 2
   jal RECTRC
   
   li $a0, 44
   li $a1, 55
   li $a2, 10
   li $a3, 2
   jal RECTRC
   
   li $a0, 46
   li $a1, 53
   li $a2, 2
   li $a3, 2
   jal RECTRC
   
   addi $sp, $sp, 4
   
   pushColor O 
   li $a0, 50
   li $a1, 53
   li $a2, 2
   li $a3, 2
   jal RECTRC
   
   li $a0, 52
   li $a1, 55
   li $a2, 10
   li $a3, 2
   jal RECTRC
   
   li $a0, 50
   li $a1, 65
   li $a2, 2
   li $a3, 2
   jal RECTRC
   
   addi $sp, $sp, 4
   
   pushColor DG
   
   li $a0, 48
   li $a1, 53
   li $a2, 2
   li $a3, 2
   jal RECTRC
   
   li $a0, 46
   li $a1, 55
   li $a2, 2
   li $a3, 6
   jal RECTRC
   
   li $a0, 46
   li $a1, 57
   li $a2, 2
   li $a3, 2
   jal RECTRC
   
   li $a0, 46
   li $a1, 61
   li $a2, 4
   li $a3, 2
   jal RECTRC
   
   li $a0, 50
   li $a1, 57
   li $a2, 2
   li $a3, 2
   jal RECTRC
   
   li $a0, 50
   li $a1, 61
   li $a2, 4
   li $a3, 2
   jal RECTRC
   
   li $a0, 48
   li $a1, 65
   li $a2, 4
   li $a3, 2
   jal RECTRC
   
   li $a0, 50
   li $a1, 69
   li $a2, 2
   li $a3, 4
   jal RECTRC
   
   addi $sp, $sp, 4
   
   pushColor LG
   li $a0, 48
   li $a1, 57
   li $a2, 8
   li $a3, 2
   jal RECTRC
   
   li $a0, 46
   li $a1, 59
   li $a2, 2
   li $a3, 6
   jal RECTRC
   
  addi $sp, $sp, 4
  
  lw $ra, 0($sp)
    
   jr $ra
   
 .include "DrawingFunctions.asm"
