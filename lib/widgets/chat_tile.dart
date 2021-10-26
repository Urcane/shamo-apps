import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';

class ChatTile extends StatelessWidget {
  const ChatTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, "/detail-chat");
      },
      child: Container(
        margin: EdgeInsets.only(top: 33),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Image.asset(
                  "assets/material/logo_shop_picture.png",
                  width: 54,
                ),
                SizedBox(
                  width: 12,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Shoe Store",
                        style: primaryTextStyle.copyWith(
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        "Good Night, this item is on...",
                        style: secondaryTextStyle.copyWith(
                          fontWeight: light,
                        ),
                        overflow: TextOverflow.ellipsis,
                      )
                    ],
                  ),
                ),
                Text(
                  "Now",
                  style: secondaryTextStyle.copyWith(
                    fontSize: 16,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 12,
            ),
            Divider(
              thickness: 1,
              color: Color(0xff282939),
            )
          ],
        ),
      ),
    );
  }
}
