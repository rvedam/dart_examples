/**
 * Example using mixins in Dart
 * ported from example from rubymonk chapter on mixins
 *  
 */

part of dart_examples;

// simple example of a mixin
abstract class WarmUp {
  void pushUps() {
    print('did push ups');
  }
}

//
// mixins require a class to be a subtype of something before being 
// implemented. To work around and just apply the mixin in Dart,
// explicit make class subtype of Object
//
class Dojo extends Object with WarmUp {
  void tai_kyo_ku() {
    print('Practicing stances');
  }
}

class Gym extends Object with WarmUp {
  void preacherCurls() {
    print('building biceps');
  }
}
