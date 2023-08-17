import 'package:clothes_app/screens/details/widgets/add_cart.dart';
import 'package:clothes_app/screens/details/widgets/clothes_info.dart';
import 'package:clothes_app/screens/details/widgets/detail_app_bar.dart';
import 'package:clothes_app/screens/details/widgets/size_list.dart';
import 'package:flutter/material.dart';

import '../../models/clothes.dart';

class DetailPage extends StatelessWidget {
final Clothes clothes;
DetailPage(this.clothes);

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
DetailAppBar(clothes),
ClothesInfo(clothes),
SizeList(),
AddCart(clothes),
          ],
        ),
        
      ),
    );
  }
}