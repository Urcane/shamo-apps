import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';
import 'package:shamo/widgets/product_card.dart';
import 'package:shamo/widgets/product_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget _header() {
      return Container(
        margin: EdgeInsets.only(
          top: defaultMargin,
          left: defaultMargin,
          right: defaultMargin,
        ),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Hello, Ucup",
                    style: primaryTextStyle.copyWith(
                      fontSize: 24,
                      fontWeight: semibold,
                    ),
                  ),
                  Text(
                    "@ucupp",
                    style: subtitleTextStyle.copyWith(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 54,
              height: 54,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage("assets/material/image_profile.png"),
                ),
              ),
            )
          ],
        ),
      );
    }

    Widget _categories() {
      return Container(
        margin: EdgeInsets.only(top: defaultMargin),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: <Widget>[
              SizedBox(
                width: defaultMargin,
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 12,
                ),
                margin: EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  "All Shoes",
                  style: primaryTextStyle.copyWith(
                    fontSize: 13,
                    fontWeight: medium,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 12,
                ),
                margin: EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                  border: Border.all(color: subtitleTextColor),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  "Running",
                  style: subtitleTextStyle.copyWith(
                    fontSize: 13,
                    fontWeight: medium,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 12,
                ),
                margin: EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                  border: Border.all(color: subtitleTextColor),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  "Training",
                  style: subtitleTextStyle.copyWith(
                    fontSize: 13,
                    fontWeight: medium,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 12,
                ),
                margin: EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                  border: Border.all(color: subtitleTextColor),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  "Basketball",
                  style: subtitleTextStyle.copyWith(
                    fontSize: 13,
                    fontWeight: medium,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 12,
                ),
                margin: EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                  border: Border.all(color: subtitleTextColor),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  "Hiking",
                  style: subtitleTextStyle.copyWith(
                    fontSize: 13,
                    fontWeight: medium,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    Widget _popularProductsTitle() {
      return Container(
        margin: EdgeInsets.only(
          top: defaultMargin,
          left: defaultMargin,
          right: defaultMargin,
        ),
        child: Text(
          "Popular Products",
          style: primaryTextStyle.copyWith(
            fontSize: 22,
            fontWeight: semibold,
          ),
        ),
      );
    }

    Widget _newArrivalsTitle() {
      return Container(
        margin: EdgeInsets.only(
          top: defaultMargin,
          left: defaultMargin,
          right: defaultMargin,
        ),
        child: Text(
          "New Arrivals",
          style: primaryTextStyle.copyWith(
            fontSize: 22,
            fontWeight: semibold,
          ),
        ),
      );
    }

    Widget _popularProducts() {
      return Container(
        margin: EdgeInsets.only(top: 14),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: <Widget>[
              SizedBox(width: defaultMargin),
              ProductCard(),
              ProductCard(),
              ProductCard(),
            ],
          ),
        ),
      );
    }

    Widget _newArrivals() {
      return Container(
        margin: EdgeInsets.only(top: 14),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              ProductTile(),
              ProductTile(),
              ProductTile(),
              ProductTile(),
            ],
          ),
        ),
      );
    }

    return ListView(
      children: <Widget>[
        _header(),
        _categories(),
        _popularProductsTitle(),
        _popularProducts(),
        _newArrivalsTitle(),
        _newArrivals(),
      ],
    );
  }
}
