import 'package:flutter_test/flutter_test.dart';
import 'package:unit_test/models/favorites.dart';


//https://codelabs.developers.google.com/codelabs/flutter-app-testing#5
void main() {
  group(("App provider tests"), () {
    //arange
    var favorites = Favorites();

    test('Initial value is 0', () {
      expect(favorites.items.isEmpty, true);
    });
    test('Test add function of method', () {
      //arange
      var number = 35;
      //act
      favorites.add(number);
      //assert
      expect(favorites.items.contains(number), true);
    });

    test('Test remove function of method', () {
      //arange
      var number = 45;
      //act
      favorites.add(number);
      //assert
      expect(favorites.items.contains(number), true);
      //act
      favorites.remove(number);
      //assert
      expect(favorites.items.contains(number), false);
    });
  });
}
