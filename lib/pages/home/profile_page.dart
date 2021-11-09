import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget _header() {
      return AppBar(
        backgroundColor: background1Color,
        elevation: 0,
        automaticallyImplyLeading: false,
        flexibleSpace: Container(
          margin: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
          padding: EdgeInsets.all(defaultMargin),
          child: Row(
            children: <Widget>[
              ClipOval(
                child: Image.asset(
                  "assets/material/image_profile.png",
                  width: 64,
                ),
              ),
              SizedBox(
                width: 16,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Halo, Ucup",
                      style: primaryTextStyle.copyWith(
                        fontSize: 24,
                        fontWeight: semibold,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      "@ucup",
                      style: subtitleTextStyle.copyWith(fontSize: 16),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Image.asset(
                  "assets/material/exit_button.png",
                  width: 20,
                ),
              ),
            ],
          ),
        ),
      );
    }

    Widget _menuItem(String text) {
      return Container(
        margin: EdgeInsets.only(top: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              text,
              style: secondaryTextStyle.copyWith(
                fontSize: 13,
              ),
              overflow: TextOverflow.ellipsis,
            ),
            Icon(
              Icons.chevron_right_rounded,
              color: primaryTextColor,
            )
          ],
        ),
      );
    }

    Widget _content() {
      return Expanded(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          width: double.infinity,
          decoration: BoxDecoration(
            color: background3Color,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              Text(
                "Account",
                style: primaryTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: semibold,
                ),
              ),
              GestureDetector(
                child: _menuItem("Edit Profile"),
                onTap: () {
                  Navigator.pushNamed(context, "/edit-profile");
                },
              ),
              _menuItem("Your Orders"),
              _menuItem("Help"),
              SizedBox(
                height: 30,
              ),
              Text(
                "General",
                style: primaryTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: semibold,
                ),
              ),
              _menuItem("Privacy & Policy"),
              _menuItem("Term of service"),
              _menuItem("Rate App"),
            ],
          ),
        ),
      );
    }

    return Column(
      children: <Widget>[
        _header(),
        _content(),
      ],
    );
  }
}
