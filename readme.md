# Pacman

Pacman is coding challange I was given which with under my understanding was to create a 5 X 5 board and by the use of typing commands you are able to move Pacman within the board.

## How to play

- open this link: https://repl.it/@CliftonTheodore/pacmanchallange

## Technologies

- Ruby
- MiniTest & MiniTest Reporters

## Approach

- My first task was to right myself down a checklist of how I wanted to solve this challange.
- I used Ruby because I have done previous challanges similiar to this one and found it great for storing input
- I used a class for pacman because I then would be able to write unit tests.
- I decided to go with using a Hash/Object as I was storing properties for pacman
- Then I started to create my methods and write tests for them
- Once i was happy with them all working the way they were supposed to, I then started taking the inputs
- I used loops for error handling for when the user tried to type outside the scope of the game
- Then I did the seperation of concerns by creating a pacman class file, a methods file and lastly a main file to run it all
- Lastly I wanted to change it up a little and at the beginning ask the user to provide an X coordinate and a Y coordinate and lastly ask them what direction they would like to face when they type in PLACE.
