import 'package:coffee/components/drinkTile.dart';
import 'package:coffee/models/drink.dart';
import 'package:coffee/models/shop.dart';
import 'package:coffee/pages/OrderPage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  //got to oderder page
  void goToOrderPage(Drink drink){
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => Orderpage(drink: drink),));
  }



  @override
  Widget build(BuildContext context) {
    return Consumer<BubbleTeaShop>(builder: (context, value, child) =>
        Scaffold(
        backgroundColor: Colors.brown.shade200 ,
        appBar: AppBar(
          title:Text("COFFEE SHOP",style: TextStyle(fontSize: 20),) ,

        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              children: [
                //heading

                SizedBox(height: 10,),

                //list of drinks
                Expanded(child: ListView.builder(
                  itemCount: value.shop.length,
                    itemBuilder: (context, index) {
                    //get individuak
                      Drink individualDrink=value.shop[index];
                      //return list
                      return DrinkTile(drink: individualDrink,
                          trailing: Icon(Icons.arrow_forward),
                        onTap: () => goToOrderPage(individualDrink),
                      );
                    }
                ),
                ),

              ],
            ),
          ),
        )
    ),);
  }
}
