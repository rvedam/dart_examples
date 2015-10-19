/**
 * Example of doing asynchronous programming in Dart
 * 
 * Simple cat program using the Future API.
 */

import 'dart:io';
// you can use aliases
//import 'dart:async' as async;

// you can also make certain objects, functions, etc. visible/invisible using
// show/hide feature.
import 'dart:async' show Future;

void processLines(List<String> lines) {
  print('inside reading file as Future function:');
  print('number of lines ${lines.length}');
  for(var i = 0; i < lines.length; i++) {
    print(lines[i]);
  }
}

void main(List<String> args) {
  if(args.length < 1) {
    print('USAGE: dart dcat_future.dart <filename>');
    return;
  }

  // read in entire file as a list of Strings for procesing later.
  Future file = new File(args[0]).readAsLines();
  
  // using the Future API we attach a callback to the then  
//  file.then((List<String> lines) {
//    print('inside reading file as Future function:');
//    print('number of lines ${lines.length}');
//    for(var i = 0; i < lines.length; i++) {
//      print(lines[i]);
//    }
//  });

  file.then(processLines);
}