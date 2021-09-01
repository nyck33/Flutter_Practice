import 'dart:math';

import '../pages/ui_state/failure.dart';
import '../models/product.dart';

Random _random = Random();

class ProductService {
  Future<List<Product>> getProducts() {
    try {
      return Future.delayed(Duration(seconds: 2), () {
        _randomlyThrowError();

        return [
          Phone(id: "1", name: "iPhone 12"),
          Insurance(id: "2", name: "Home Insurance", quote: 25.44)
        ];
      });
    } catch (e) {
      throw e;
    }
  }

  void _randomlyThrowError() {
    List<Failure> possibleErrors = [
      Failure("There's an issue geting products"),
      NetworkFailure()
    ];

    final shouldThrowError = _random.nextBool();
    if (shouldThrowError) {
      throw possibleErrors[_random.nextInt(possibleErrors.length)];
    }
  }
}
