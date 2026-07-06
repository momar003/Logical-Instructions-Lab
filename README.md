# Logical Instructions Lab

## Objective
The objective of this lab is to demonstrate logical instructions in Assembly language using XOR and TEST.

## Program Description
This program demonstrates two logical instructions:

1. XOR
2. TEST

## XOR Demonstration
The program loads the value 25 into the EAX register from var1.

Then it performs:

xor eax, eax

This shows that XORing an operand with itself changes the value to 0.  
The result is stored in xor_result.

## TEST Demonstration
The TEST instruction is used to check if a number is even or odd.

The program uses:

test eax, 1

If the last bit is 0, the number is even.  
If the last bit is 1, the number is odd.

In this program, var2 is 8, which is even.  
If the number is even, result is set to 0.  
If the number is odd, result is set to 1.

## Flowchart
Start  
↓  
Load var1 into EAX  
↓  
XOR EAX with itself  
↓  
Store 0 in xor_result  
↓  
Load var2 into EAX  
↓  
Use TEST to check last bit  
↓  
If zero, number is even  
↓  
Store 0 in result  
↓  
Exit program  

## Challenges
One challenge I had was understanding that the TEST instruction does not store a new value. Instead, it only updates the CPU flags. I also had to make sure the result variable was updated so I could view it while debugging in gdb.

## How to Assemble and Run

```bash
nasm -f elf32 logical_instructions.asm -o logical_instructions.o
ld -m elf_i386 logical_instructions.o -o logical_instructions
./logical_instructions