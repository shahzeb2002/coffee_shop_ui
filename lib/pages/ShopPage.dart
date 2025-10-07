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
          title:Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.local_cafe_rounded,color: Colors.white,),
              SizedBox(width: 8,),
              Text("COFFEE SHOP",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
            ],
          ),

        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              children: [
                SizedBox(height: 10,),
                Text(
                  "Today's Specials ☕",
                  style: TextStyle(
                    color: Colors.brown.shade900,
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    letterSpacing: 0.5,
                  ),
                ),

                SizedBox(height: 15,),

                //list of drinks
                Expanded(child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                  itemCount: value.shop.length,
                    itemBuilder: (context, index) {
                    //get individuak
                      Drink individualDrink=value.shop[index];
                      //return list
                      return DrinkTile(drink: individualDrink,
                          trailing: Icon(Icons.arrow_forward,
                            color: Colors.brown.shade400,
                            size: 20,),
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
