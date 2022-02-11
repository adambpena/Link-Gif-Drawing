# Name: Adam Pena
# Date: 11/14/2021
# Description: File that draws Link using files

.text
   .globl main
main:

   jal DRAW_BG
  
   jal DRAW_LINK_HEAD
   
   jal DRAW_LINK_BODY
   
   jal DRAW_LINK_SWORD
   
    #jal DRAW_LINK_EXPLOSIONS 
   # Uncomment for static drawing of explosions rather than infinite loop of explosions disappearing and reappearing 
   jal DRAW_LINK_EXPLOSIONS_LOOP
   # Uncomment for infinite loop of explosions disappearing and reappearing 
   
   li $v0, 10
   syscall

.include "drawBG.asm"
.include "LinkHead.asm"
.include "LinkBody.asm"
.include "LinkSword.asm"
#.include "LinkExplosions.asm"   # Include for static drawing and comment out LinkExplosionsLoop
.include "LinkExplosionsLoop.asm"  # Include for looping drawing and comment out LinkExplosions
