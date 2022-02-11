# Name: Adam Pena
# Date: 11/13/2021
# Description: File with functions for drawing vertical and horizontal rectangles, of certain length/wigth
# ***Uses 256x256 bitmap, unit width x length of 2x2, base address 0x10010000***

############################################################################################
# RECTRC: Draws a rectangle of a specified color with dimensions length x width at address specificied by row x column  #
# 5 Parameters: row address, column address, length, width, color												#
#       $a0: Row address																					#
#	 $a1: Column address																				#
#       $a2: Length of rectangle																			#
#       $a3: Width of rectangle																			#
#       $a0: First on stack before calling																		#
############################################################################################

RECTRC:
   lw   $s5, 0($sp)		# Load color to $s5
   
   sub $sp, $sp, 24        # Need to store five words 
   sw  $s5, 0($sp)
   sw  $s0, 4($sp)
   sw  $s1, 8($sp)
   sw  $s2, 12($sp)
   sw  $s3, 16($sp)
   sw  $s4, 20($sp)
   
   move $s0, $a0		# Row address to start
   move $s1, $a1		# Column address to start
   move $s2, $a2		# Length of rectangle to be drawn
   move $s3, $a3		# Width of rectangle to be drawn
   
   li $s4, 0x10010000   	# $s4 holds base address
   
   addi $s0, $s0, -1		# Offset to zero-index rows
   addi $s1, $s1, -1		# Offset to zero-index columns
   
   mul $t0, $s0, 512	# Row offset
   mul $t1, $s1, 4  		# Column offset
   add $t0, $t0, $t1		# Total offset
   add $s4, $s4, $t0	# Address to start drawing
   
   addi $t1, $zero, 0	# $t1 will be a counter for length units
   
   DRAW_RECTRC_LENGTH:
      sne $t0, $s3, 0
      beqz $t0, END_DRAW_RECTRC_LENGTH
      
      sw $s5, 0($s4)							# Store color
      
      addi $s4, $s4, 4						# Increment address pointer $s4 by a column
      addi $t1, $t1, 1 						# Increment length counter
      
      sne $t0, $t1, $s2
      beqz $t0, DRAW_RECTRC_WIDTH
      
      b DRAW_RECTRC_LENGTH
      
      DRAW_RECTRC_WIDTH:
         addi $s4, $s4, 512
         mul $t2, $t1, -4
         add $s4, $s4, $t2
         addi $s3, $s3, -1
         li $t1, 0
      b DRAW_RECTRC_LENGTH 
      
   END_DRAW_RECTRC_LENGTH:
   
   j END_RECTRC
   
END_RECTRC:

lw $a0, 20($sp)
lw $s4, 16($sp)
lw $s3, 12($sp)
lw $s2, 8($sp)
lw $s1, 4($sp)
lw $s0, 0($sp)
addi $sp, $sp, 24  
   
jr $ra
      
##################################################################################
# RECTAD: Draws a rectangle of a specified color with dimensions length x width at a starting hex address   #
# 4 Parameters: hex address, length, width, color												  #
#       $a0: hex address to start at (assuming bitmap base address of 0x10010000)					  #
#       $a1: Length of rectangle																  #
#       $a2: Width of rectangle																  #
#       $a3: color																			  #
##################################################################################

RECTAD:

   sub $sp, $sp, 16        # Need to store five words 
   sw  $s0, 0($sp)
   sw  $s1, 4($sp)
   sw  $s2, 8($sp)
   sw  $s3, 12($sp)
   
   move $s0, $a0		# Hex address to start at
   move $s1, $a1		# Length of rectangle to be drawn
   move $s2, $a2		# Width of rectangle to be drawn
   move $s3, $a3		# Color

   addi $t1, $zero, 0	# $t1 will be a counter for length units
   
   DRAW_RECTAD_LENGTH:
      sne $t0, $s2, 0
      beqz $t0, END_DRAW_RECTAD_LENGTH
      
      sw $s3, 0($s0)							# Store color
      
      addi $s0, $s0, 4						# Increment address pointer $s0 by a column
      addi $t1, $t1, 1 						# Increment length counter
      
      sne $t0, $t1, $s1
      beqz $t0, DRAW_RECTAD_WIDTH
      
      b DRAW_RECTAD_LENGTH
      
      DRAW_RECTAD_WIDTH:
         addi $s0, $s0, 512
         mul $t2, $t1, -4
         add $s0, $s0, $t2
         addi $s2, $s2, -1
         li $t1, 0
      b DRAW_RECTAD_LENGTH 
      
   END_DRAW_RECTAD_LENGTH:
   
   j END_RECTAD
   
END_RECTAD:

lw $s3, 12($sp)
lw $s2, 8($sp)
lw $s1, 4($sp)
lw $s0, 0($sp)
addi $sp, $sp, 16
   
jr $ra



   
   
   
