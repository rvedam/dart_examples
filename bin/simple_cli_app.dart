/**
 * Example of a simple command-line application that takes input from
 * the user.
 *
 */

import 'dart:io';

void main() {
  print('What is your name?');
  String name = stdin.readLineSync();
  print('Hello $name');
}