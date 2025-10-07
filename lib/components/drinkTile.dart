
import 'package:coffee/models/drink.dart';
import 'package:flutter/material.dart';

class DrinkTile extends StatelessWidget {
  void Function()? onTap;
  final Drink drink;
  DrinkTile({super.key,required this.drink,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap ,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.brown.shade100,
          borderRadius: BorderRadius.circular(12)
        ),
        child: ListTile(
          title: Text(drink.name),
          subtitle: Text(drink.price),
          leading: Image.asset(drink.imagePath),
          trailing: Icon(Icons.arrow_forward),
      
        ),
      ),
    );
  }
}
