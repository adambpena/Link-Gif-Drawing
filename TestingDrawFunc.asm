# Testing drawing functions

.text
   .globl main
main:

   addi $sp, $sp, 4
   li $a0, 0x00ff0000
   sw $a0, 0($sp)

   li $a0, 50
   li $a1, 256
   li $a2, 20
   li $a3, 5

   #jal RECTRC
   
   li $a0, 0x10010000
   li $a1, 50
   li $a2, 50
   li $a3, 0x000000ff
   #jal RECTAD
   
   li $a0, 0x10010000
   li $a1, 50
   li $a2, 128
   jal RETURN_BITMAP_ADDRESS
   
   add $a0, $zero, $v0
   li $a1, 10
   li $a2, 50
   li $a3, 0x000000ff
   jal RECTAD
   
   li $v0, 10
   syscall
   
 .include "DrawingFunctions.asm"
 .include "FindBitmapAddress.asm"
