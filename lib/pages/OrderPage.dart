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
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text("${widget.drink.name},added to cart",
        style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.brown.shade400,
        dismissDirection: DismissDirection.down,
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),

    );



    // showDialog(context: context, builder: (context) => AlertDialog(
    //   icon: Icon(Icons.check_circle),
    //   backgroundColor: Colors.brown.shade300,
    //   title: Text('Item Added Successfully',style: TextStyle(color: Colors.white),),
    // ),);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown.shade200,
      appBar: AppBar(
        title: Text(widget.drink.name,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
      ),
      body: Column(
      children: [
        SizedBox(height: 20,),
        Container(
          decoration: BoxDecoration(
            color: Colors.brown.shade100,
            borderRadius: BorderRadius.circular(25),
            boxShadow: [
              BoxShadow(
                color: Colors.brown.withOpacity(0.2),
                blurRadius: 15,
                offset: const Offset(0, 8),
              ),
            ],
          ),
          padding: const EdgeInsets.all(20),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Hero(
                tag: widget.drink.imagePath,
                child: CircleAvatar(
                  backgroundImage: AssetImage(widget.drink.imagePath),
                  radius: 170,
                ),
              ),
              Positioned(
                bottom: 10,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
                  decoration: BoxDecoration(
                    color: Colors.brown.shade400.withOpacity(0.8),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    widget.drink.name,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),

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
                    child: Text('Sweetness',style: TextStyle(color: Colors.brown.shade900,fontSize: 16),)),
                Expanded(
                  child: Slider(
                    value: sweetvalue,
                    label: sweetvalue.toString(),
                    divisions: 4,
                    onChanged: (value) => customizeSweet(value),),
                )
              ],
            ),

            //Pearls
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                    width: 100,
                    child: Text('Pearls',style: TextStyle(color: Colors.brown.shade900,fontSize: 16),)
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
            //Ice
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                    width: 100,
                    child: Text('Ice',style: TextStyle(color: Colors.brown.shade900,fontSize: 16),)),
                Expanded(
                  child: Slider(
                    value: icevalue,
                    label: icevalue.toString(),
                    divisions: 4,
                    onChanged: (value) => customizeIce(value),),
                )
              ],
            ),
          ],),
        ),

        //add  to cart
        MaterialButton(
          color: Colors.brown,
          minWidth: 110,
          height: 50,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            onPressed:addToCart,
          child: Text('Add to Cart',style: TextStyle(color: Colors.brown.shade100),),

        )
      ],
      ),
    );
  }
}
