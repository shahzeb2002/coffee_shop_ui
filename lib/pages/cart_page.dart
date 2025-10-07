import 'package:coffee/components/drinkTile.dart';
import 'package:coffee/models/shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/drink.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {

  void removeFromCart(Drink drink){
    Provider.of<CoffeeShop>(context,listen: false).removeFromCart(drink);
  }


  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeeShop>(builder: (context, value, child) => Scaffold(
        backgroundColor: Colors.brown.shade200,
        appBar: AppBar(
          title: Text('CART',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
        ),
        body: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              //heading
              // Text('Your Cart',style: TextStyle(fontSize: 20),),
              SizedBox(height: 10,),


              //list of cart items
              Expanded(child: value.cart.isEmpty
                  ? Center(
                child: Text(
                  'Your cart is empty ☕',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.brown.shade700,
                  ),
                ),
              )
                  : ListView.builder(
                itemCount: value.cart.length,
                  itemBuilder: (context, index) {
                    //get indivital
                    Drink drink=value.cart[index];
                    return DrinkTile(
                        drink: drink,
                        onTap: () => removeFromCart(drink),
                        trailing: Icon(Icons.delete));
              }
              )
              ),
              //pay butoon

              MaterialButton(
                onPressed: (){},
                color: Colors.brown,
                minWidth: 110,
                height: 50,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                child: Text('PAY',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
              )


            ],
          ),
        )
    ),
    );
  }
}
