import 'package:flutter/material.dart';

class SizeList extends StatefulWidget {
  const SizeList({super.key});

  @override
  State<SizeList> createState() => _SizeListState();
}

class _SizeListState extends State<SizeList> {
  final List<String> sizeList = ['S','M','L','XL','XXL'];
 var currentSeletected = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
            height: 60,
      padding: EdgeInsets.symmetric(horizontal: 25,vertical: 10),
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context,index) => GestureDetector
        (
            onTap: () {
              setState(() {
                   currentSeletected = index;
              });
     
      },
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                decoration: BoxDecoration(
                      
                 color: currentSeletected == index ?
               Color(0xFFFFEBC7)
                : Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey.withOpacity(0.1) ,width: 2)
                    ),
            child: Text(
              sizeList[index],
              style: TextStyle(
               color: currentSeletected == index ?
                Theme.of(context).primaryColor
                : Colors.grey,
                fontWeight: FontWeight.bold,
              ),
            )
        
            ,
          ),
        ), 

              separatorBuilder: (_ , index) => SizedBox(width: 10,),
               itemCount: sizeList.length),
    );
  }
}