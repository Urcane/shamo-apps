import 'package:flutter/material.dart';
import 'package:shamo/pages/home/chat_page.dart';
import 'package:shamo/pages/home/home_page.dart';
import 'package:shamo/pages/home/profile_page.dart';
import 'package:shamo/pages/home/wishlist_page.dart';
import 'package:shamo/theme.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;

  Widget cartButton() {
    return FloatingActionButton(
      onPressed: () {},
      backgroundColor: secondaryColor,
      child: Image.asset(
        "assets/material/cart_icon.png",
        width: 20,
      ),
    );
  }

  Widget customBottomNavigationBar() {
    return Theme(
      data: ThemeData(splashColor: Colors.transparent),
      child: ClipRRect(
        borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
        child: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 10,
          clipBehavior: Clip.antiAlias,
          child: Container(
            decoration: BoxDecoration(
              color: background1Color,
            ),
            child: BottomNavigationBar(
              showSelectedLabels: false,
              showUnselectedLabels: false,
              backgroundColor: background4Color,
              type: BottomNavigationBarType.fixed,
              currentIndex: _currentIndex,
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Image.asset(
                    "assets/material/home_icon.png",
                    width: _currentIndex == 0 || _currentIndex == 2 ? 22 : 20,
                    color: _currentIndex == 0 || _currentIndex == 2
                        ? primaryColor
                        : Color(0xff808191),
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Image.asset(
                    "assets/material/chat_icon.png",
                    width: _currentIndex == 1 ? 23 : 21,
                    color:
                        _currentIndex == 1 ? primaryColor : Color(0xff808191),
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: SizedBox(
                    width: 28,
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Image.asset(
                    "assets/material/favorite_icon.png",
                    width: _currentIndex == 3 ? 23 : 21,
                    color:
                        _currentIndex == 3 ? primaryColor : Color(0xff808191),
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Image.asset(
                    "assets/material/profile_icon.png",
                    width: _currentIndex == 4 ? 22 : 20,
                    color:
                        _currentIndex == 4 ? primaryColor : Color(0xff808191),
                  ),
                  label: '',
                ),
              ],
              onTap: (int index) {
                setState(() {
                  _currentIndex = index;
                });
              },
            ),
          ),
        ),
      ),
    );
  }

  Widget body() {
    switch (_currentIndex) {
      case 0:
        return HomePage();
      case 1:
        return ChatPage();
      case 3:
        return WishlistPage();
      case 4:
        return ProfilePage();
      default:
        return HomePage();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: background1Color,
      floatingActionButton: cartButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: customBottomNavigationBar(),
      body: body(),
    );
  }
}
