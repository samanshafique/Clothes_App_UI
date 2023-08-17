import 'package:clothes_app/screens/home/widgets/categories_list.dart';
import 'package:flutter/material.dart';


class BestSell extends StatelessWidget {
  const BestSell({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CategoriesList('Best Of Sell'),
          Card(
            margin: EdgeInsets.symmetric(horizontal: 22),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(
                          'assests/images/best1.png',
                          width: 85,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                       Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        const  Text(
                            'Miniso Women Oversize',
                            style: TextStyle(
                                height: 1.5, fontWeight: FontWeight.bold),
                          ),
                        const  Text(
                            'T-shirt',
                            style: TextStyle(
                                height: 1.5, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '\$70.99',
                            style: TextStyle(
                              height: 1.5,
                              fontWeight: FontWeight.bold,
                             color: Theme.of(context).primaryColor,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  child: Container(
                      padding: EdgeInsets.all(7),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.9),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.favorite,
                        color: Colors.red,
                        size: 15,
                      )),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
