import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../../models/clothes.dart';

class DetailAppBar extends StatefulWidget {
  final Clothes clothes;
  DetailAppBar(this.clothes);
  //const DetailAppBar({super.key});

  @override
  State<DetailAppBar> createState() => _DetailAppBarState();
}

class _DetailAppBarState extends State<DetailAppBar> {
  @override
  Widget build(BuildContext context) {
    final CarouselController _controller = CarouselController();
    int _currentPage = 0;
    return Container(
      child: Stack(
        children: [
          Container(
              child: CarouselSlider(
            carouselController: _controller,
            options: CarouselOptions(
                height: 500,
                viewportFraction: 1,
                onPageChanged: (index, reason) {
                  setState(() {
                    _currentPage = index;
                  });
                }),
            items: widget.clothes.detailedUrl
                .map((e) => Builder(
                    builder: (context) => Container(
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('$e'),
                              fit: BoxFit.fitHeight,
                            ),
                            borderRadius: BorderRadius.circular(25),
                          ),
                        )))
                .toList(),
          )),
          Positioned(
            bottom: 30,
            left: 180,
            child: Row(
              children: widget.clothes.detailedUrl
                  .asMap()
                  .entries
                  .map((entry) => GestureDetector(
                        onTap: () => _controller.animateToPage(entry.key),
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 4),
                          width: 12,
                          height: 12,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white.withOpacity(
                                  _currentPage == entry.key ? 0.9 : 0.4)),
                        ),
                      ))
                  .toList(),
            ),

            // child: Container(
            //   padding: EdgeInsets.all(7),
            //   decoration: BoxDecoration(
            //     color: Colors.white.withOpacity(0.9),
            //     shape: BoxShape.circle,
            //      ),
            //     child: Icon(
            //   Icons.favorite,
            //   color: Colors.red,
            //   size: 15 ,
            // )),
          ),
          Container(
            margin: EdgeInsets.only
            (
              top: MediaQuery.of(context).padding.top,
              left: 25,right: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Container(
                      padding: EdgeInsets.all(7),
                   
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.9),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.grey,
                        size: 20,
                      )),
                ),
                Container(
                  
                    padding: EdgeInsets.all(7),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.9),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.more_horiz,
                      color: Color.fromARGB(255, 104, 103, 103),
                      size: 20,
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
