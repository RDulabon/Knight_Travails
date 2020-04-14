#The Odin Project: Ruby Programming
##Project 2: Data Structures and Algorithms

**Knight's Travails**

A knight in chess can move to any square on the standard 8x8 chess board from any other square on the board, given enough turns. Its basic move is two steps forward and one step to the side. It can face any direction.

Your task is to build a function knight_moves that shows the simplest possible way to get from one square to another by outputting all squares the knight will stop on along the way.


1. Put together a script that creates a game board and a knight.
2. Treat all possible moves the knight could make as children in a tree. Don’t allow any moves to go off the board.
3. Decide which search algorithm is best to use for this case. Hint: one of them could be a potentially infinite series.
4. Use the chosen search algorithm to find the shortest path between the starting square (or node) and the ending square. Output what that full path looks like.

*I developed a Breadth-First Search to tackle the assignment. Each vertex contains a coordinate location in the form of an array, distance from origin, and predecessor. A queue was created to keep track of verteces yet to be visited. The first element was analyzed - if it matched the destination, the program ends; otherwise, its children are added to the end of the queue. To have a visual element to the output, I added the #build_board method.*