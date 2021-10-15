import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  Widget header() {
    return Container(
      margin: EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Register",
            style: primaryTextStyle.copyWith(
              fontSize: 24,
              fontWeight: semibold,
            ),
          ),
          SizedBox(height: 2),
          Text(
            "Sign up to continue",
            style: subtitleTextStyle.copyWith(
              fontSize: 14,
              fontWeight: reguler,
            ),
          )
        ],
      ),
    );
  }

  Widget emailInput() {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Email Address",
            style: primaryTextStyle.copyWith(
              fontSize: 16,
              fontWeight: medium,
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Container(
            height: 50,
            padding: EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              color: background2Color,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Center(
              child: Row(
                children: <Widget>[
                  Image.asset(
                    'assets/material/email_icon.png',
                    width: 17,
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: TextFormField(
                      style: secondaryTextStyle,
                      decoration: InputDecoration.collapsed(
                        hintText: "Your Email Address",
                        hintStyle: subtitleTextStyle,
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget nameInput() {
    return Container(
      margin: EdgeInsets.only(top: 70),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Fullname",
            style: primaryTextStyle.copyWith(
              fontSize: 16,
              fontWeight: medium,
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Container(
            height: 50,
            padding: EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              color: background2Color,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Center(
              child: Row(
                children: <Widget>[
                  Image.asset(
                    'assets/material/name_Icon.png',
                    width: 17,
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: TextFormField(
                      style: secondaryTextStyle,
                      decoration: InputDecoration.collapsed(
                        hintText: "Your Fullname",
                        hintStyle: subtitleTextStyle,
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget usernameInput() {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Username",
            style: primaryTextStyle.copyWith(
              fontSize: 16,
              fontWeight: medium,
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Container(
            height: 50,
            padding: EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              color: background2Color,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Center(
              child: Row(
                children: <Widget>[
                  Image.asset(
                    'assets/material/username_Icon.png',
                    width: 17,
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: TextFormField(
                      style: secondaryTextStyle,
                      decoration: InputDecoration.collapsed(
                        hintText: "Your Username",
                        hintStyle: subtitleTextStyle,
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget passwordInput() {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Password",
            style: primaryTextStyle.copyWith(
              fontSize: 16,
              fontWeight: medium,
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Container(
            height: 50,
            padding: EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              color: background2Color,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Center(
              child: Row(
                children: <Widget>[
                  Image.asset(
                    'assets/material/password_icon.png',
                    width: 17,
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: TextFormField(
                      obscureText: true,
                      style: secondaryTextStyle,
                      decoration: InputDecoration.collapsed(
                        hintText: "Your Password",
                        hintStyle: subtitleTextStyle,
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget signupButton() {
    return Container(
      height: 50,
      margin: const EdgeInsets.only(top: 30),
      width: double.infinity,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Text(
          "Sign up",
          style: primaryTextStyle.copyWith(
            fontSize: 16,
            fontWeight: medium,
          ),
        ),
        onPressed: () {},
      ),
    );
  }

  Widget footer(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 30, top: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Already have an account ? ",
            style: primaryTextStyle.copyWith(
              fontSize: 12,
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Text(
              "Sign in",
              style: purpleTextStyle.copyWith(
                fontSize: 12,
                fontWeight: medium,
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      backgroundColor: background1Color,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(
              horizontal: defaultMargin,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                header(),
                nameInput(),
                usernameInput(),
                emailInput(),
                passwordInput(),
                signupButton(),
                footer(context),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
