import 'dart:io';

void main() {
  // Define a 3x3 magic square

  List<int> magicSquare = [8, 1, 6, 3, 5, 7, 4, 9, 2];

  // Print the 3x3 magic square in grid format

  print("3x3 Magic Square (Sum of each row, column, or diagonal = 15):");

  for (int i = 0; i < magicSquare.length; i++) {
    stdout.write("${magicSquare[i].toString().padLeft(2)} ");

    if ((i + 1) % 3 == 0) print(""); // New line after every 3 elements
  }

  // Verifying sums

  print("\nVerifying sums:");

  // Check row sums

  print("Rows:");

  for (int i = 0; i < 3; i++) {
    int rowSum =
        magicSquare[i * 3] + magicSquare[i * 3 + 1] + magicSquare[i * 3 + 2];

    print("Row ${i + 1}: $rowSum");
  }

  // Check column sums

  print("\nColumns:");

  for (int i = 0; i < 3; i++) {
    int colSum = magicSquare[i] + magicSquare[i + 3] + magicSquare[i + 6];

    print("Column ${i + 1}: $colSum");
  }

  // Check diagonal sums

  print("\nDiagonals:");

  int mainDiagonal = magicSquare[4] + magicSquare[2] + magicSquare[6];

  int secondaryDiagonal = magicSquare[0] + magicSquare[4] + magicSquare[8];

  print("Main Diagonal: $mainDiagonal");

  print("Secondary Diagonal: $secondaryDiagonal");
}
