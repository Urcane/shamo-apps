import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shamo/theme.dart';

class ProductPage extends StatefulWidget {
  ProductPage({Key? key}) : super(key: key);

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  List images = [
    'assets/pictures/image_shoes.png',
    'assets/pictures/image_shoes.png',
    'assets/pictures/image_shoes.png',
  ];

  int currentIndex = 0;
  double _width = 16;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent),
    );

    Widget _indicator(int index) {
      return AnimatedContainer(
        duration: Duration(milliseconds: 300),
        margin: EdgeInsets.symmetric(horizontal: 2),
        width: currentIndex == index ? _width : 4,
        height: 4,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: currentIndex == index ? primaryColor : Color(0xffc4c4c4),
        ),
      );
    }

    Widget _header() {
      int index = -1;

      return Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(
              left: defaultMargin,
              right: defaultMargin,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.chevron_left_rounded),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.shopping_bag,
                    color: background1Color,
                  ),
                )
              ],
            ),
          ),
          CarouselSlider(
            items: images
                .map(
                  (image) => Image.asset(
                    image,
                    width: MediaQuery.of(context).size.width,
                    height: 310,
                    fit: BoxFit.cover,
                  ),
                )
                .toList(),
            options: CarouselOptions(
                initialPage: 0,
                onPageChanged: (index, reason) {
                  setState(() {
                    _width = 16;
                    currentIndex = index;
                  });
                }),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: images.map((image) {
              index++;
              return _indicator(index);
            }).toList(),
          )
        ],
      );
    }

    return Scaffold(
      backgroundColor: background6Color,
      body: ListView(
        children: <Widget>[
          _header(),
        ],
      ),
    );
  }
}
