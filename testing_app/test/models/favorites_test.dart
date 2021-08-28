import 'package:test/test.dart';
//use ../ to get up to level of folder I want
import '../../lib/models/favorites.dart';

void main() {
  group('Testing App Provider', () {
    //bind similar tests in a group, multiple grps in single file
    //to test different parts of corresponding file in /lib directory
    var favorites = Favorites();

    //2 pos params: description, callback where actual test goes
    test('A new item should be added', () {
      var number = 33;
      favorites.add(number);
      //use getter for list of ints
      expect(favorites.items.contains(number), true);
    });

    test('An item should be removed', () {
      var number = 45;
      //check if favorites is empty first?
      favorites.add(number);
      expect(favorites.items.contains(number), true);
      favorites.remove(number);
      expect(favorites.items.contains(number), false);
    });
  });
}
