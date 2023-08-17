import 'package:clothes_app/models/clothes.dart';
import 'package:clothes_app/screens/home/widgets/clothes_item.dart';
import 'package:flutter/material.dart';

import 'categories_list.dart';

class NewArrival extends StatelessWidget {
  final clothesList = Clothes.generateClothes(); // const ClothesItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CategoriesList("New Arrival"),
          Container(
            height: 280,
            
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => ClothesItem( clothesList[index]), 
              separatorBuilder: (_ , index) => SizedBox(width: 10,),
               itemCount: clothesList.length),
          )
        ],
      ),
    );
  }
}