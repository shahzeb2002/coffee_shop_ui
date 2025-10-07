
import 'package:coffee/models/drink.dart';
import 'package:flutter/material.dart';

class DrinkTile extends StatelessWidget {
  void Function()? onTap;
  final Drink drink;
  final Widget trailing;
  DrinkTile({super.key,required this.drink,required this.onTap,required this.trailing});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap ,
      child: Container(
        margin: EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
          color: Colors.brown.shade100,
          borderRadius: BorderRadius.circular(12)
        ),
        child: ListTile(
          title: Text(drink.name),
          subtitle: Text(drink.price),
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(5),
              child: SizedBox(
                width: 50,
                  height:80,
                  child: Image.asset(drink.imagePath,fit: BoxFit.cover,))),
          trailing: trailing,
      
        ),
      ),
    );
  }
}
