/**
 * Example of doing asynchronous programming in Dart
 * 
 * Simple cat program, written in three different ways
 * 1) using Future API
 */

import 'dart:io';
import 'dart:async' as async;

void main(List<String> args) {
  print("args: $args");
  
  // read in entire file as a list of Strings for procesing later.
  async.Future file = new File(args[0]).readAsLines();
  
  // using the Future API we attach a callback to the then  
  file.then((List<String> lines) {
    print('inside reading file as Future function:');
    print('number of lines ${lines.length}');
    for(var i = 0; i < lines.length; i++) {
      print(lines[i]);
    }
  });
  
}