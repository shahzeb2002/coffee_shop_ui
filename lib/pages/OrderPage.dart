import 'package:coffee/models/shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/drink.dart';


class Orderpage extends StatefulWidget {
  final Drink drink;
  const Orderpage({super.key,required this.drink});

  @override
  State<Orderpage> createState() => _OrderpageState();
}

class _OrderpageState extends State<Orderpage> {
  //sweet
  double sweetvalue=0.5;
  void customizeSweet(double newValue){
    setState(() {
      sweetvalue=newValue;
    });
  }
  //ice
  double icevalue=0.5;
  void customizeIce(double newValue){
    setState(() {
      icevalue=newValue;
    });
  }
  //pearls
  double pearlsvalue=0.5;
  void customizePearls(double newValue){
    setState(() {
      pearlsvalue=newValue;
    });
  }

  //add to cart
  void addToCart(){
    Provider.of<BubbleTeaShop>(context,listen: false).addToCart(widget.drink);
    Navigator.pop(context);
    showDialog(context: context, builder: (context) => AlertDialog(
      title: Text('added'),
    ),);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown.shade200,
      appBar: AppBar(
        title: Text(widget.drink.name),
      ),
      body: Column(
      children: [
        //images
        Image.asset(widget.drink.imagePath),
        //sliders
        Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(children: [
            //sweetness
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                    width: 100,
                    child: Text('Sweetness')),
                Expanded(
                  child: Slider(
                    value: sweetvalue,
                    label: sweetvalue.toString(),
                    divisions: 4,
                    onChanged: (value) => customizeSweet(value),),
                )
              ],
            ),
            //Ice
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                    width: 100,
                    child: Text('Ice')),
                Expanded(
                  child: Slider(
                    value: icevalue,
                    label: icevalue.toString(),
                    divisions: 4,
                    onChanged: (value) => customizeIce(value),),
                )
              ],
            ),
            //Pearls
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                    width: 100,
                    child: Text('Pearls')
                ),
                Expanded(
                  child: Slider(
                    value: pearlsvalue,
                    label: pearlsvalue.toString(),
                    divisions: 4,
                    onChanged: (value) => customizePearls(value),),
                )
              ],
            ),
          ],),
        ),

        //add  to cart
        MaterialButton(
          color: Colors.brown,
            child: Text('Add to Cart',style: TextStyle(color: Colors.white),),
            onPressed:addToCart
        )
      ],
      ),
    );
  }
}
