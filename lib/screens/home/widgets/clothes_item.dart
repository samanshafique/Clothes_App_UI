import 'package:clothes_app/models/clothes.dart';
import 'package:clothes_app/screens/details/detail.dart';
import 'package:flutter/material.dart';

class ClothesItem extends StatelessWidget {
  final Clothes clothes;

  ClothesItem(this.clothes);
  // const ClothesItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: (){
          Navigator.of(context).push(
MaterialPageRoute(builder: (context) => DetailPage(clothes))
          );
        },
        child: Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
      
            children: [
              Stack(
                children: [
                  Container(
                    margin:const EdgeInsets.all(8),
                    height: 170,
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                        image: AssetImage(clothes.imageUrl),
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 15,
                    right: 20,
                    child: Container(
                    padding: const EdgeInsets.all(7),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.9),
                        shape: BoxShape.circle,
                         ),
                        child: const Icon(
                      Icons.favorite,
                      color: Colors.red,
                      size: 15 ,
                    )),
                  )
                ],
              ),
              Text(clothes.title,
              style: const TextStyle(
                height: 1.5,
                fontWeight: FontWeight.bold
              ),
              ),
              Text(clothes.subtitle,
               style: const TextStyle(
                height: 1.5,
                fontWeight: FontWeight.bold
              ),
              ),
              Text(clothes.price,
               style: TextStyle(
                height: 1.5,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).primaryColor,
              ),),
      
            ],
          ),
        ),
      ),
    );
  }
}
