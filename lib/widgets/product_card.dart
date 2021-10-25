import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 278,
      width: 215,
      margin: EdgeInsets.only(right: defaultMargin),
      decoration: BoxDecoration(
        color: Color(0xffECEDEF),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 30,
          ),
          Image.asset(
            "assets/pictures/image_shoes.png",
            width: 215,
            height: 150,
            fit: BoxFit.cover,
          ),
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Running",
                  style: secondaryTextStyle.copyWith(fontSize: 12),
                ),
                Text(
                  "Harden Vol 4",
                  style: blackTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: semibold,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 6),
                Text(
                  "\$ 215",
                  style: priceTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: medium,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
