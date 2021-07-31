import 'package:flutter/material.dart';
import 'package:instagram/utils/routes.dart';

class SpashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.network(
          "https://i.pinimg.com/originals/bd/bb/90/bdbb9049428d40db02d6f6bea33721fd.jpg",
        ),
        ElevatedButton(
          onPressed: () => Navigator.pushNamed(context, MyRoutes.loginRoute),
          child: Icon(Icons.next_plan),
        )
      ],
    );
  }
}
