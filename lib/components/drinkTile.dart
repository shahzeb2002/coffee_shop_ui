
import 'package:coffee/models/drink.dart';
import 'package:flutter/material.dart';

class DrinkTile extends StatelessWidget {
  void Function()? onTap;
  final Drink drink;
  final Widget trailing;
  DrinkTile({super.key,required this.drink,required this.onTap,required this.trailing});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(16),
      splashColor: Colors.brown.shade200.withOpacity(0.3),
      onTap:onTap ,
      child: Container(
        // margin: EdgeInsets.only(bottom: 10),
        margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
        decoration: BoxDecoration(
          color: Colors.brown.shade100,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.brown.withOpacity(0.15),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],

        ),
        child: ListTile(
          title: Text(drink.name,
            style: TextStyle(
              color: Colors.brown.shade800,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          subtitle: Text(drink.price),
          leading: Hero(
            tag: drink.imagePath,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
                child: SizedBox(
                  width: 65,
                    height:65,
                    child: Image.asset(drink.imagePath,fit: BoxFit.cover,))),
          ),
          trailing: trailing,

        ),
      ),
    );
  }
}
