import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/utils/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Vx.black,
      body: SafeArea(
        child: Column(
          children: [
            CupertinoSearchTextField(
              backgroundColor: Vx.gray900,
              onChanged: (value) {},
            ).p16().h10(context),
            Container()
          ],
        ),
      ),
    );
  }
}
