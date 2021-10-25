import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget _header() {
      return AppBar(
        backgroundColor: background1Color,
        elevation: 0,
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text(
          "Massage Support",
          style: primaryTextStyle.copyWith(
            fontSize: 18,
            fontWeight: medium,
          ),
        ),
      );
    }

    Widget _content() {
      return Expanded(
        child: Container(
          width: double.infinity,
          color: background3Color,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                "assets/material/headset_icon.png",
                width: 80,
              ),
              SizedBox(
                height: 28,
              ),
              Text(
                "Oops No Massages yet",
                style: primaryTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: medium,
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                "You have never done a transaction",
                style: secondaryTextStyle,
              ),
              SizedBox(
                height: 28,
              ),
              Container(
                height: 44,
                child: TextButton(
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 10,
                    ),
                    backgroundColor: primaryColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Explore Store",
                    style: primaryTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: medium,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      );
    }

    return Column(
      children: <Widget>[
        _header(),
      ],
    );
  }
}
