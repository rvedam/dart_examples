/**
 * Example of doing asynchronous programming in Dart
 * 
 * Simple cat program using the Streams API.
 */

import 'dart:io';
import 'dart:convert' show LineSplitter, UTF8;
import 'dart:async';

void main(List<String> args) {
  if(args.length < 1) {
    print('USAGE: dart dcat_streams.dart <filename>');
    return;
  }
  final file = new File(args[0]);
  
  Stream<List<int>> inputStream = file.openRead();
    
  inputStream
    // decode to UTF8.
    .transform(UTF8.decoder)
    // split individual lines
    .transform(new LineSplitter())
    // output to console.
    .listen((line) {
      print('$line');
    });
}