# Name: Adam Pena
# Date: 11/13/2021
# Description: Program that draws background image from Legend Of Zelda: Link to the Past using random seed
# ***Uses 256x256 bitmap, unit width x length of 2x2***

.eqv BG_DARKGREEN 0x004c892c
.eqv BG_GREEN 0x00479b4c
.eqv BG_LIGHTGREEN 0x00599f47
.eqv BG_LIGHTERGREEN 0x005b9e54
   
   DRAW_BG:
      sub $sp, $sp, 24        # Need to store five words
      sw $ra, 0($sp)
      sw  $s0, 4($sp)
      sw  $s1, 8($sp)
      sw  $s2, 12($sp)
      sw  $s3, 16($sp)
      sw  $s4, 20($sp)
   
      li $s0, 0x10010000
      li $s1, BG_GREEN
      li $s2, BG_LIGHTGREEN
      li $s3, BG_DARKGREEN
      li $s4, BG_LIGHTERGREEN
      
      li $t0, 0			   # Lower limit of the loop
      li $t1, 16384               # Upper limit of the loop
      DRAW_BG_LOOP:
   
         sne $t2, $t0, $t1
         beqz $t2, END_DRAW_BG
   
         li $a1, 400
         li $v0, 42
         syscall
   
         move $t2, $a0
         
         slti $t3, $t2, 251		# If between range 0-250, go to draw green dot
         bnez $t3, G_DOT
         
         sgt $t3, $t2, 250		# If between range 251-312, go to draw light green dot
         slti $t4, $t2, 313 
         and $t3, $t3, $t4
         bnez $t3, LG_DOT
         
         sgt $t3, $t2, 312		# If in range 313-375, go to draw dark green dot
         slti $t4, $t2, 375 
         and $t3, $t3, $t4
         bnez $t3, LLG_DOT
         
         sgt $t3, $t2, 374	        # If in range 375-400, go to draw light green dot
         bnez $t3, DG_DOT
      
         G_DOT:
            sw $s1, 0($s0)
            addi $s0, $s0, 4 
            addi $t0, $t0, 1
            b DRAW_BG_LOOP
         
         LG_DOT:
            sw $s2, 0($s0)
            addi $s0, $s0, 4 
            addi $t0, $t0, 1
            b DRAW_BG_LOOP
      
         DG_DOT:
            sw $s3, 0($s0)      
            addi $s0, $s0, 4 
            addi $t0, $t0, 1
            b DRAW_BG_LOOP
      
         LLG_DOT:
            sw $s4, 0($s0)
            addi $s0, $s0, 4 
            addi $t0, $t0, 1
            b DRAW_BG_LOOP
         
   END_DRAW_BG:
   
   # Epilog
    lw $s4, 20($sp)
    lw $s3, 16($sp)
    lw $s2, 12($sp)
    lw $s1, 8($sp)
    lw $s0, 4($sp)
    lw $ra, 0($sp)
    addi $sp, $sp, 24
   
    jr $ra
      


