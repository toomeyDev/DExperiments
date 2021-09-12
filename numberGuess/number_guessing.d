import std.stdio;
import std.random;
void main()
{
	/* A simple number guessing game, prompts the user to
	* guess a number randomly chosen from 0-25, program
	* must be recompiled to generate a new random number */
	
	writeln("Welcome!");
	int num = uniform(1, 26);
	do{
		writeln("Choosing a random number from 1-25...");
		writeln("Guess the number: ");
		int guess;	
		readf(" %s", &guess);
		writeln("The number is ", num, "!");
		if(guess == num)
		{
			writeln("Congratulations, ", guess, " is the correct number!");
			break;
		}
		else
		{
			writeln("Wrong guess, try again.");	
		}
	}while(true);
}

