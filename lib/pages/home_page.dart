import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/utils/routes.dart';
import 'package:instagram/utils/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Vx.black,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Vx.black,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: MyTheme.creamColor,
        onTap: _onItemTapped,
      ),
      body: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.network(
                    "https://cdn-2.tstatic.net/batam/foto/bank/images/ilustrasi-instagram-resmi-merilis-fitur-darkmode-selamat-datang-di-instagram-dark-mode.jpg")
                .h10(context),
            InkWell(
              child: Icon(
                CupertinoIcons.search,
                color: MyTheme.creamColor,
              ).p12(),
              onTap: () => Navigator.pushNamed(context, MyRoutes.searchRoute),
              borderRadius: BorderRadius.circular(40.0),
            ),
          ],
        ),
      ),
    );
  }
}
