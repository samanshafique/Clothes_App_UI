import 'package:flutter/material.dart';

import '../../../models/clothes.dart';

class ClothesInfo extends StatelessWidget {
  final Clothes clothes;
  ClothesInfo(this.clothes);
  //const ClothesInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25,vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row( 
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('${clothes.title} ${clothes.subtitle}',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20

              ),),
              
              
  Container(
                      padding: EdgeInsets.all(7),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.9),
                        shape: BoxShape.circle,
                         ),
                        child: Icon(
                      Icons.favorite,
                      color: Colors.red,
                      size: 18 ,
                    )),
            ],
            ),
          Row(
            children: [
              Icon(
                Icons.star_border,
                color: Theme.of(context).primaryColor,
              ),
              Text('4.5 (2.7k)',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
                
              ),
             
            
            ],
          ),

 RichText(text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Gucci Oversize Hoodie, a hoddie with the Style of gucci \nmade of Soft Silk and Fabric, and made with an oversized\nmodel according to today\'s time',
                    style: TextStyle(
                      color: const Color.fromARGB(255, 128, 126, 126),
                      height: 1.5,
                    ),
                  ),
                     TextSpan(
                    text: ' Read More',
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                    )
                     ),
                  
                ]
              )
              )

        ],
      ),

    );
  }
}  