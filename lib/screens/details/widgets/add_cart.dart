import 'package:flutter/material.dart';

import '../../../models/clothes.dart';

class AddCart extends StatelessWidget {
  final Clothes clothes;
  const AddCart(this.clothes);
 

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25,vertical: 10),
      child:Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             const Text(
                'Price',
                style: TextStyle(fontSize: 16 , color: Colors.grey),
              ),
                Text(
              clothes.price,
                style: const TextStyle(fontSize: 20 ,
                fontWeight: FontWeight.bold,
                height: 1.5),
              ),
            ],
          ),
         const  SizedBox(width: 20,),
          Expanded(
            child: Container(
              height: 60,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),

                  ),
                  elevation: 0,
                  backgroundColor: Theme.of(context).primaryColor
                ),
                onPressed: (){}, 
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Add to Cart ",
                  style: TextStyle(
                    fontSize: 20
                  ),),
                  Icon(Icons.shopping_cart_outlined)
                ],
              )),
            ),
          )
        ],
      )

    );
  }
}  