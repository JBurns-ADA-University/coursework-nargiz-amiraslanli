.global _start
_start:

//Calculate the sum of all integers from m to n (inclusive).

mov r0,#2 // starting integer m
mov r1,#5 // ending integer n

mov r2, #0 // moving the starting integer to sum
// r2 is sum register

cmp r0,r1
addle r2, r2, r0 // adds value of m into sum
addle r0, r0, #1 // increments m by 1

movle r3, pc // register to store the value of pc
suble r3, r3, #20 // offset
movle pc, r3 // creating a loop

// loop should look at cmp r0,r1, whitch is at address #0x0c
