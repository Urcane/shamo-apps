import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';

class DetailChatPage extends StatelessWidget {
  const DetailChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PreferredSizeWidget header() {
      return PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppBar(
          backgroundColor: background1Color,
          centerTitle: false,
          toolbarHeight: 70,
          title: Row(
            children: <Widget>[
              Image.asset(
                "assets/material/logo_shop_picture_online.png",
                width: 50,
              ),
              SizedBox(
                width: 12,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Shoe Store",
                    style: primaryTextStyle.copyWith(
                      fontWeight: medium,
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    "online",
                    style: secondaryTextStyle.copyWith(
                      fontWeight: light,
                      fontSize: 14,
                    ),
                  )
                ],
              )
            ],
          ),
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_new_rounded),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
      );
    }

    Widget _productPreview() {
      return Container(
          width: 225,
          height: 74,
          margin: EdgeInsets.only(bottom: 20),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: background5Color,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: primaryColor),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  "assets/pictures/image_shoes.png",
                  width: 54,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Eternal Shogun Vol 1",
                      style: primaryTextStyle.copyWith(fontSize: 14),
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      "\$ 878",
                      style: priceTextStyle.copyWith(
                        fontSize: 14,
                        fontWeight: medium,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Image.asset(
                "assets/material/delete_item_on_chat.png",
                width: 22,
              )
            ],
          ));
    }

    Widget chatInput() {
      return Container(
        margin: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            _productPreview(),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  child: Container(
                    height: 45,
                    padding: EdgeInsets.symmetric(
                      horizontal: 16,
                    ),
                    decoration: BoxDecoration(
                      color: background4Color,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: TextFormField(
                        style: primaryTextStyle,
                        decoration: InputDecoration.collapsed(
                          hintText: "Type Message...",
                          hintStyle: subtitleTextStyle,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: IconButton(
                    splashColor: Colors.transparent,
                    onPressed: () {},
                    icon: Image.asset(
                      "assets/material/submit_icon.png",
                      width: 22,
                      height: 19,
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: background3Color,
      appBar: header(),
      bottomNavigationBar: chatInput(),
      body: SingleChildScrollView(),
    );
  }
}
