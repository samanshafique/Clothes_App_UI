
import 'package:clothes_app/screens/home/widgets/best_sell.dart';
import 'package:clothes_app/screens/home/widgets/custome_appbar.dart';
import 'package:clothes_app/screens/home/widgets/new_arrival.dart';
import 'package:clothes_app/screens/home/widgets/search_input.dart';
import 'package:flutter/material.dart';




class HomePage extends StatelessWidget {

final bottomlist = ['home','menu','heart', 'user'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
  
      body:  SingleChildScrollView(
        child:  Column(
          children: [
 const CustomAppbar(),
   SearchInput(),
   NewArrival(),
   BestSell(),
  //  ClothesItem(Clothes('Gucci Oversize', 'Hoodie', '\$12.32', 'assests/images/arrival1.png', ['assests/images/arrival1.png','assests/images/detail2.png']),)
      
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        items: bottomlist.map((e) => BottomNavigationBarItem(
          label: e,
          icon: Image.asset('assests/icons/$e.png',width: 25,)

          )
          ).toList(),
      ),
    );
  }
}