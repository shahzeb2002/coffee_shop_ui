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
    Provider.of<BubbleTeaShop>(context,listen: false).removeFromCart(drink);
  }


  @override
  Widget build(BuildContext context) {
    return Consumer<BubbleTeaShop>(builder: (context, value, child) => SafeArea(
      child: Scaffold(
        backgroundColor: Colors.brown.shade200,
          body: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              children: [
                //heading
                Text('Your Cart',style: TextStyle(fontSize: 20),),
                SizedBox(height: 10,),


                //list of cart items
                Expanded(child: ListView.builder(
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
                  child: Text('Pay',style: TextStyle(color: Colors.white),),
                  color: Colors.brown,
                )


              ],
            ),
          )
      ),
    ),
    );
  }
}
