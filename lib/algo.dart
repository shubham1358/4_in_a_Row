import 'package:flutter/material.dart';

class Algo {
  var tList =
      List.generate(6, (i) => List.generate(7, (i) => 0), growable: false);
  var c = Color(0xFF000000);

  int getK(int j, int t) {
    int i = 0;
    while (i < 6) {
      if (tList[i][j] == 0)
        i++;
      else {
        break;
      }
    }
    i--;
    if (t == 1)
      this.tList[i][j] = 1;
    else
      tList[i][j] = 2;
    return i;
  }

  Color getColor(int i, int j) {
    if (tList[i][j] == 1)
      c = Color(0xFFff1a1a);
    else if (tList[i][j] == 2) c = Color(0xFF000099);
    return c;
  }

  int checkWinOrLose(int rowNum, int result) {
//  For checking whether any win or lose condition is reached. Returns 1 if win or lose is reached. else returns 0
//  tList[][] is the 6X7 matrix
//  result is the column number where the last coin was placed
//  rowNum is the row number where the last coin was placed
    int player = tList[rowNum][result];
    if (rowNum <= 2 &&
        tList[rowNum + 1][result] == player &&
        tList[rowNum + 2][result] == player &&
        tList[rowNum + 3][result] == player) // 4 in a row vertically
      return 1;
    else {
      int count = 1;
      for (int i = result + 1; i < 7; i++) {
        // 4 in a row horizontally
        if (tList[rowNum][i] != player) break;
        count++;
      }
      for (int i = result - 1; i >= 0; i--) {
        // 4 in a row horizontally
        if (tList[rowNum][i] != player) break;
        count++;
      }
      if (count >= 4) return 1;
      count = 1;
      for (int i = result + 1, j = rowNum + 1; i < 7 && j < 6; i++, j++) {
        // 4 in a row diagonally
        if (tList[j][i] != player) break;
        count++;
      }
      for (int i = result - 1, j = rowNum - 1; i >= 0 && j >= 0; i--, j--) {
        // 4 in a row diagonally
        if (tList[j][i] != player) break;
        count++;
      }
      if (count >= 4) return 1;
      count = 1;
      for (int i = result + 1, j = rowNum - 1; i < 7 && j >= 0; i++, j--) {
        // 4 in a row diagonally
        if (tList[j][i] != player) break;
        count++;
      }
      for (int i = result - 1, j = rowNum + 1; i >= 0 && j < 6; i--, j++) {
        // 4 in a row diagonally
        if (tList[j][i] != player) break;
        count++;
      }
      if (count >= 4) return 1;
    }
    return 0;
  }
}
