import 'package:flutter/material.dart';

class SearchInput extends StatelessWidget {
  // const SearchInput({super.key});
final taglist = ['women', 'T-Shirt' , 'Dress'];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25,top: 25,right: 25),
      child:Column(
        children: [
          Row(
            children: [
                Container(
             
                child: Flexible(
                  flex: 1,
                  child: TextField(
                        decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                         
                          ),
                          
                      prefixIcon: Container(
                        padding: EdgeInsets.all(15),
                        child: Image.asset('assests/icons/search.png'),
                        width: 20,
                      ),
                
                          hintText: 'Search Astestic Shirt',
                        ),
                       autofocus: false,
                      ),
                )
                  ),
                  Container(
                    height: 50,
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.only(left:5),
                  
                    decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(14),
                    ),
                    child:Image.asset('assests/icons/filter.png') ,
                  )

            ],
          ),

           Row(
            children: 
              taglist.map ((e) => 
                  Container(
                    height: 50,
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.only(top: 10,right: 10),
                  
                    decoration: BoxDecoration(
                        color: Color(0xFFFFEBC7),
                        borderRadius: BorderRadius.circular(10),
                    ),
                    child:Text(e,style: TextStyle(color: Colors.grey),) ,
                  ),
              ).toList(),
          
          )

        ],
      ) ,
    );
  }
}