import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 25, left: 25, right: 25),
      //   padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top, left:25, right: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          RichText(
              text: const TextSpan(
            children: [
              TextSpan(
                  text: 'Howdy, What Are You\nLooking For?',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  )),
              TextSpan(
                  text: ' 👀',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ))
            ],
          )),
          Stack(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                     const  BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0, 1),
                        blurRadius: 0.2,
                        spreadRadius: 0.1,
                      )
                    ]),
                child: const Icon(Icons.shopping_cart_checkout_outlined,
                    color: Colors.grey),
              ),
           const   Positioned(
                top:4,
                right: 3,
                child: CircleAvatar(
                  radius: 8,
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                  child: Text('2'),
                ), //CircularAvatar
              ),
            ],
          ),

             
        ],
      ),

         
    );
  }
}
