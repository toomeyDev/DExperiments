import std.stdio;
import std.random;

void main()
{
	/* A simple number guessing game, prompts the user to
	* guess a number randomly chosen from 0-25, program
	* will generate a new random number each time it is run. */
	
	writeln("Welcome!");
	writeln("Choosing a random number from 1-25...");
	int num = uniform(1, 26);
	do{
		writeln("Guess the number: ");
		int guess;	
		readf(" %s", &guess);
		if (guess < num) {
			writeln(guess, " is too small, try a bigger number.");	
		} else if (guess > num){
			writeln(guess, " is too big, try a smaller number.");
		} else if (guess == num) {
			writeln("Congratulations, ", guess, " is the number!");
			break;
		} else {
			writeln("Invalid input, please type a valid integer.");
		}
	}while(true);
}
