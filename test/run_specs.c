#include <stdio.h>
#include "../rummi.h"

int should_be_legal(char* filename) {
	if (is_legal(read_file(filename))) {
		return 1;
	} else {
		printf("Error: file not legal.\n");
		return 0;
	}
}

int main() {

	should_be_legal("legal1.txt");
	should_be_legal("legal2.txt");
	should_be_legal("legal3.txt");
	should_be_legal("legal4.txt");

	return 0;

}
