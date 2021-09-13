import std.stdio;
import std.random;

void main() {
	int[7] diceSides = [ 3, 4, 6, 8, 10, 12, 20 ];
	writeln("This is a simple program which simulates rolling various types of dice\n",
			"Supported types include: ", diceSides, "\n");
	 	
	do {
		int numRolls; // number of times to roll the dice
		writeln("How many times would you like to roll?");
		readf(" %s", &numRolls);
		
		int numDice; // number of dice to roll
		writeln("How many dice do you want to roll?");
		readf(" %s", &numDice);
		
		int diceType; // type of dice to roll, selected by number of sides
		writeln("\nWhat type of dice would you like to use?\nNumber of sides: ");
		readf(" %s", &diceType);
		
		bool valid; // validate that a supported diceType was chosen
		for (int i = 0; i < diceSides.length; ++i) {
			if (diceType == diceSides[i]) {
				valid = true;
				break;
			}
		}
		if (!valid) {
			writeln("Invalid number of sides, try again with one of the supported types.");
			writeln("Supported types: ", diceSides);
			continue;
		}

		// Roll selected number of selected diceType chosen number of times
		writeln("\nRolling ", numDice, " D", diceType, "'s ", numRolls, " times...\n");
		for(int i = 0; i < numRolls; ++i){
			writeln("Roll ", i+1, ":");
			for(int x = 0; x < numDice; ++x){
				int result = uniform(1, diceType+1);
				writeln("Die # ", x+1, " -rolled a ", result, "!");
			}
			writeln();
		}

		writeln("Finished rolling dice.");
				
		break;
	} while(true);
	
}