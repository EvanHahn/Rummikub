#include <stdio.h>

// There are four colors.
enum color { RED, ORANGE, TEAL, BLACK };

// Tiles have a number and a color.
// 0 signifies a Joker, and then color is irrelevant.
typedef struct {
	int number;
	enum color color;
} tile;

// Read in a file.
tile* read_file(char* filename) {
	FILE* file = fopen(filename, "r");
	if (file == NULL) {
		return;
	}
	tile board[106];
	/* char color_code; */
	/* int number; */
	/* while (fscanf(file, "%d%s", number, color_code) != EOF) { */
	/* 	printf("%d", number); */
	/* } */
	fclose(file);
	return board;
}

// Is this file legal?
int is_legal(tile* tiles) {
	return 0;
}
