/**
 * Example of using async and await keywords in dart
 * 
 * simple cat program
 */

import 'dart:io';

// async function is any function whose body is marked with async

catFile(filePath) async {
  List<String> lines = (await (new File(filePath)).readAsLines());
  for(var i = 0; i < lines.length; i++) {
    print(lines[i]);
  }
}

void main(List<String> args) {
   if(args.length < 1) {
     print('USAGE: dart dcat_async.dart <filename>');
     return;
   }
   catFile(args[0]);
}