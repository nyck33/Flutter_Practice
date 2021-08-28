import 'dart:convert';

//putting consts in class not global like book
const keyId = 'id';
const keyName = 'pizzaName';
const keyDescription = 'description';
const keyPrice = 'price';
const keyImage = 'imageUrl';

class Pizza{

  late int? id;
  late String? pizzaName;
  late String? description;
  late double? price;
  late String? imageUrl;

  Pizza.fromJson(Map<String, dynamic> json) {
    //need a map not raw json
    this.id = (json[keyId] != null) ?
      int.tryParse(json[keyId].toString()) : 0;
    this.pizzaName = (json[keyName] != null) ?
      json[keyName].toString() : '';
    this.description = (json[keyDescription] != null) ?
      json[keyDescription].toString(): '';
    this.price = (json[keyPrice] != null &&
        double.tryParse(json[keyPrice].toString()) != null) ? json[keyPrice] : 0.0;
    this.imageUrl = (json[keyImage] != null) ?
      json[keyImage].toString() : '';
  }
  //default constructor for factory
  //https://stackoverflow.com/a/54997386/9481613
  Pizza();
  ///factory constructor
  factory Pizza.fromJsonOrNull (Map<String, dynamic> json){
    Pizza pizza = Pizza();
    pizza.id = (json[keyId] != null) ?
    int.tryParse(json[keyId].toString()) : 0;
    pizza.pizzaName = (json[keyName] != null) ?
    json[keyName].toString() : '';
    pizza.description = (json[keyDescription] != null) ?
    json[keyDescription].toString(): '';
    pizza.price = (json[keyPrice] != null &&
        double.tryParse(json[keyPrice].toString()) != null) ? json[keyPrice] : 0.0;
    pizza.imageUrl = (json[keyImage] != null) ?
    json[keyImage].toString() : '';

    if (pizza.id == 0 || pizza.pizzaName!.trim() == ''){
      //return null;
      print('null pizza: $pizza');
    }
    return pizza;
  }
  ///unused
  Map<String, dynamic> toJson(){
    return{
      keyId: id,
      keyName: pizzaName,
      keyDescription: description,
      keyPrice: price,
      keyImage: imageUrl,
    };
  }
}