import 'package:flutter/material.dart';


class CategoriesList extends StatelessWidget {

final String title ;
CategoriesList(this.title);
  //const CategoriesList({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
child: Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
    Container(
      padding: const EdgeInsets.all(15),
      child: Text(title,
      style: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold
      ),),
    ),
    Row(
      children: [
           Container(
      padding:const  EdgeInsets.all(15),
      child: Text('View All',style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
      color: Theme.of(context).primaryColor,
      ),),
    ),
      Container(
        margin: const EdgeInsets.only(right: 8),

        decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(10),
                    ),
                    child:const Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                    ) ,
    )

      ],
    )
  
  ],
),
    );
}
}
