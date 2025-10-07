
import 'package:coffee/models/drink.dart';
import 'package:flutter/cupertino.dart';

class BubbleTeaShop extends ChangeNotifier{
  //list of drink for sales

  final List<Drink> _shop=[
    Drink(
        name: 'Milk Tea',
        price: '300 PKR',
        imagePath: 'lib/images/milktea.jpg'),
    Drink(
        name: 'Cappuccino',
        price: '500 PKR',
        imagePath: 'lib/images/cap.png'),
    Drink(
        name: 'Latte',
        price: '400 PKR',
        imagePath: 'lib/images/latte.png'),
    Drink(
        name: 'Horchata',
        price: '400 PKR',
        imagePath: 'lib/images/horchata.jpg'),

  ];

  //list of drink in cart
  final List<Drink> _userCart=[];

  //get drinks for sell

  List<Drink> get shop =>_shop;

  //get user cart
  List<Drink> get cart => _userCart;

  //add to cart
  void addToCart(Drink drink){
    _userCart.add(drink);
    notifyListeners();
  }

  //remove from cart
  void removeFromCart(Drink drink){
    _userCart.remove(drink);
    notifyListeners();
  }
}