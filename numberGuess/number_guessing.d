import std.stdio;
void main()
{
	// simple number guessing game
	writeln("Welcome!");
	int i = 1000;
	do{
		writeln("Guess the number: ");
		int guess;	
		readf(" %s", &guess);
		writeln("The number is ", i, "!");
		if(guess == i)
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

