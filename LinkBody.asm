# Name: Adam Pena
# Date: 11/14/2021
# Description: File that draws Link's body (left/right relative to viewer)

.eqv TEAL 0x0038d26f
.eqv DTEAL 0x00389067
.eqv GOLD 0x00f3d83a
.eqv RED 0x00c2141e
.eqv BRWN 0x00855735
.eqv BL 0x00252625
.eqv LT 0x00f29f64
.eqv DO 0x00d06b0a

DRAW_LINK_BODY:

   addi $sp, $sp, -4
   sw $ra, 0($sp)

.macro pushColor (%x)
      li $a0, %x
      add $sp, $sp, -4
      sw $a0, 0($sp)
   .end_macro

# Left Arm

    pushColor LT
   li $a0, 72
   li $a1, 57
   li $a2, 4
   li $a3, 4
   jal RECTRC
   
   addi $sp, $sp, 4
   
   pushColor BRWN
   li $a0, 70
   li $a1, 51
   li $a2, 6
   li $a3, 2
   jal RECTRC
   
   li $a0, 70
   li $a1, 51
   li $a2, 4
   li $a3, 4
   jal RECTRC
   
   addi $sp, $sp, 4
   
   pushColor BL
   li $a0, 74
   li $a1, 51
   li $a2, 4
   li $a3, 2
   jal RECTRC
   
   li $a0, 72
   li $a1, 55
   li $a2, 2
   li $a3, 4
   jal RECTRC
   
   li $a0, 76
   li $a1, 57
   li $a2, 4
   li $a3, 2
   jal RECTRC
   
   li $a0, 72
   li $a1, 61
   li $a2, 2
   li $a3, 4
   jal RECTRC
   
   addi $sp, $sp, 4

# Right Arm
   pushColor BRWN
   li $a0, 64
   li $a1, 71
   li $a2, 2
   li $a3, 6
   jal RECTRC
   
   li $a0, 66
   li $a1, 73
   li $a2, 2
   li $a3, 2
   jal RECTRC
   
   addi $sp, $sp, 4
   
   pushColor LT
   li $a0, 62
   li $a1, 73
   li $a2, 2
   li $a3, 2
   jal RECTRC
   
   addi $sp, $sp, 4
   
   pushColor BL
   li $a0, 70
   li $a1, 71
   li $a2, 2
   li $a3, 2
   jal RECTRC
   
   li $a0, 68
   li $a1, 73
   li $a2, 2
   li $a3, 2
   jal RECTRC
   
   li $a0, 66
   li $a1, 75
   li $a2, 2
   li $a3, 2
   jal RECTRC
   
   li $a0, 68
   li $a1, 69
   li $a2, 2
   li $a3, 6
   jal RECTRC
   
   li $a0, 64
   li $a1, 73
   li $a2, 4
   li $a3, 2
   jal RECTRC
   
   li $a0, 62
   li $a1, 75
   li $a2, 2
   li $a3, 2
   jal RECTRC
   
   addi $sp, $sp, 4

# Torso
  
   pushColor BL
   li $a0, 66
   li $a1, 47
   li $a2, 2
   li $a3, 6
   jal RECTRC
   
   li $a0, 70
   li $a1, 49
   li $a2, 2
   li $a3, 4
   jal RECTRC
   
   li $a0, 74
   li $a1, 47
   li $a2, 2
   li $a3, 12
   jal RECTRC
   
   li $a0, 82
   li $a1, 53
   li $a2, 18
   li $a3, 2
   jal RECTRC
   
   li $a0, 84
   li $a1, 55
   li $a2, 10
   li $a3, 2
   jal RECTRC
   
   addi $sp, $sp, 4
   
   pushColor TEAL
   li $a0, 66
   li $a1, 49
   li $a2, 2
   li $a3, 2
   jal RECTRC
   
   li $a0, 70
   li $a1, 65
   li $a2, 2
   li $a3, 2
   jal RECTRC
   
   addi $sp, $sp, 4
   
   pushColor DTEAL
   li $a0, 68
   li $a1, 49
   li $a2, 2
   li $a3, 2
   jal RECTRC
   
   li $a0, 78
   li $a1, 49
   li $a2, 4
   li $a3, 2
   jal RECTRC
   
   li $a0, 80
   li $a1, 53
   li $a2, 10
   li $a3, 2
   jal RECTRC
   
   li $a0, 78
   li $a1, 63
   li $a2, 6
   li $a3, 2
   jal RECTRC
   
   li $a0, 76
   li $a1, 69
   li $a2, 2
   li $a3, 2
   jal RECTRC
   
   li $a0, 76
   li $a1, 61
   li $a2, 2
   li $a3, 2
   jal RECTRC
   
   li $a0, 76
   li $a1, 53
   li $a2, 4
   li $a3, 2
   jal RECTRC
   
   li $a0, 72
   li $a1, 63
   li $a2, 6
   li $a3, 4
   jal RECTRC
   
   li $a0, 70
   li $a1, 63
   li $a2, 2
   li $a3, 2
   jal RECTRC
   
   li $a0, 68
   li $a1, 67
   li $a2, 2
   li $a3, 4
   jal RECTRC

   li $a0, 70
   li $a1, 63
   li $a2, 2
   li $a3, 2
   jal RECTRC
   
   addi $sp, $sp, 4
   
   pushColor GOLD
   li $a0, 74
   li $a1, 49
   li $a2, 2
   li $a3, 2
   jal RECTRC
   
   li $a0, 76
   li $a1, 49
   li $a2, 4
   li $a3, 2
   jal RECTRC
   
   li $a0, 78
   li $a1, 53
   li $a2, 10
   li $a3, 2
   jal RECTRC
   
   li $a0, 76
   li $a1, 63
   li $a2, 6
   li $a3, 2
   jal RECTRC
   
   li $a0, 74
   li $a1, 69
   li $a2, 2
   li $a3, 2
   jal RECTRC
   
   addi $sp, $sp, 4

# Left Foot 
   pushColor BL
   li $a0, 86
   li $a1, 49
   li $a2, 6
   li $a3, 2
   jal RECTRC
   
   li $a0, 80
   li $a1, 49
   li $a2, 4
   li $a3, 2
   jal RECTRC
   
   addi $sp, $sp, 4
   
   pushColor RED
   li $a0, 82
   li $a1, 49
   li $a2, 2
   li $a3, 2
   jal RECTRC
   
   li $a0, 84
   li $a1, 51
   li $a2, 4
   li $a3, 2
   jal RECTRC
   
   addi $sp, $sp, 4
   
   pushColor BRWN
   li $a0, 82
   li $a1, 51
   li $a2, 2
   li $a3, 2
   jal RECTRC
   
   addi $sp, $sp, 4
   
   pushColor DO
   li $a0, 84
   li $a1, 49
   li $a2, 2
   li $a3, 2
   jal RECTRC
   
   addi $sp, $sp, 4

# Right Foot
   pushColor BL
   li $a0, 74
   li $a1, 71
   li $a2, 2
   li $a3, 8
   jal RECTRC
   
   li $a0, 78
   li $a1, 69
   li $a2, 2
   li $a3, 2
   jal RECTRC
   
   li $a0, 80
   li $a1, 63
   li $a2, 6
   li $a3, 2
   jal RECTRC
   
   addi $sp, $sp, 4
   
   pushColor RED
   li $a0, 80
   li $a1, 69
   li $a2, 2
   li $a3, 2
   jal RECTRC
   
   addi $sp, $sp, 4
   
   lw $ra, 0($sp)

   jr $ra