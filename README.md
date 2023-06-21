# Number-Prediction-Game-MASM
## Introduction:
The code you provided is a small assembly program that implements a number guessing game. The program prompts the user to enter a random number and allows them three chances to guess the correct number. If the user guesses the correct number within three attempts, the program displays 'W' for winning. Otherwise, it displays 'L' for losing.
## Execution Process Flow:
- The program starts with the label "start:".
- It initializes the data segment and sets it as the current segment using the "mov" instructions.
- It sets up the display of input characters without echoing using interrupt 21h, function 07h.
- The program displays a message "Enter Random Number to Guess" using interrupt 21h, function 09h.
- The program takes input from the user and stores it in the variable "var1" using interrupt 21h, function 01h.
- It displays a space using interrupt 21h, function 09h to create some visual separation.
- The program displays the message "Enter Random Number to Guess" again using interrupt 21h, function 09h.
- It initializes the values of the SI (source index) and DI (destination index) registers to 0 and 3, respectively.
- The program enters a loop labeled "L1" that compares the values of SI and DI to determine if the user has used all three chances.
- Within the loop, the program takes input from the user again using interrupt 21h, function 01h.
- It compares the entered number with the stored number in "var1" using the "cmp" instruction.
- If the numbers match, the program jumps to the "won" label, indicating that the user has won the game.
- If the numbers don't match, the program displays 'F' on the screen using interrupt 21h, function 02h to indicate a wrong guess.
- It displays a space using interrupt 21h, function 09h.
- The program increments the SI register to track the number of attempts and jumps back to the "L1" loop.
- If the user reaches three incorrect attempts (SI = DI), the program jumps to the "exit" label.
- At the "won" label, the program displays 'W' on the screen to indicate the user has won the game.
- At the "exit" label, the program displays 'L' on the screen to indicate the user has lost the game.
- Finally, the program exits by invoking interrupt 21h, function 4Ch to terminate the program.
## Note: 
The program assumes that the user will only enter a single-digit number.  
##  Execution:
You have Download MASM 8086 to execute this code. After Download link your Dosbox with Bin Folder of Masm and put Code.asm file bin and run on Dosbox.
Do following Task to Mount
```
mount c C:\path\to\directory
```
```
C:
```
```
masm Code.asm;
```
```
link filename.obj;
```
```
filename.exe
```
