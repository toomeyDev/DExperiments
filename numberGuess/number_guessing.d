import std.stdio;
import std.random;
void main()
{
	/* A simple number guessing game, prompts the user to
	* guess a number randomly chosen from 0-25, program
	* must be recompiled to generate a new random number */
	
	writeln("Welcome!");
	auto rng = Random(26); // create a random number generator from 0-25
	auto num = uniform(0, 26, rng);
	do{
		writeln("Choosing a random number from 0-25...");
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

